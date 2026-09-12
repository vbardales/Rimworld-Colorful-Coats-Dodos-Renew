<#
.SYNOPSIS
  Verifie les quatre choses de ce mod qu'une machine peut voir sans lancer le jeu.
.DESCRIPTION
  TESTING.md decrit huit scenarios a jouer dans RimWorld. Quatre points de ce document ne
  demandent pas le jeu : ils portent sur des fichiers, et un fichier se lit.

    1. La cible existe          l'xpath de chaque operation trouve-t-il le dodo dans les
                                fichiers de la version d'Extinct Animals installee ?
    2. La garde correspond      le <name> que cette version affiche aujourd'hui figure-t-il
                                dans le <mods> de l'operation qui patche son dodo ?
    3. Les textures             chaque texPath a-t-il ses rotations sur le disque, et aucun
                                PNG ne dort-il dans Textures/ sans etre appele ?
    4. Les trois noms           <name>, <packageId> et le nom du dossier disent-ils la
                                meme chose ?

  Ce que ce script ne voit pas, et ne verra jamais : l'oiseau colore a l'ecran. Un patch peut
  trouver sa cible, porter le bon nom, pointer des textures presentes, et produire malgre tout
  vingt dodos bruns. Les scenarios A a H de TESTING.md restent entiers.

  Le point 2 est celui pour lequel ce port existe. PatchOperationFindMod appelle
  Verse.ModLister.HasActiveModWithName, qui compare le nom affiche caractere par caractere.
  Une republication sous un nouveau nom ne casse rien, ne journalise rien, et rend les dodos
  bruns pour toujours. Ce script la voit ; le log du jeu, non.

  Cette comparaison est faite ici avec -ccontains et -ceq, jamais avec -contains ni -eq, qui
  ignorent la casse en PowerShell. Le corps de HasActiveModWithName, desassemble sur le
  Assembly-CSharp de 1.6, tient en une ligne : ModMetaData.Name == name, soit String
  op_Equality, ordinal. Aucun ToLower, aucun Trim, aucun StringComparison. Et ModMetaData.Name
  rend le <name> tel qu'ecrit : un mod sans <name> n'a pas de nom, et aucune garde ne peut
  l'atteindre. La premiere version de ce script utilisait -contains ; elle declarait le patch
  sain avec un "Extinct animals" minuscule dans la garde, c'est-a-dire exactement la panne
  silencieuse qu'il est cense trouver.

  Sur les dossiers lus dans le mod cible : LoadFolders.xml est respecte quand il existe, y
  compris les attributs IfModActive / IfModNotActive, qui sont signales plutot qu'evalues -
  ce script ne sait pas quels mods sont actifs, seulement lesquels sont installes.

  Sur l'xpath : RimWorld fusionne tous les Defs actifs en un seul document de racine <Defs>
  avant de patcher. Ce script evalue l'xpath fichier par fichier, ce qui revient au meme pour
  une expression ancree en /Defs/... : l'union des resultats est celle du document fusionne.
.EXAMPLE
  pwsh -File scripts\Check-Mod.ps1
.EXAMPLE
  pwsh -File scripts\Check-Mod.ps1 -TargetPath 'C:\...\workshop\content\294100\3602926791'
.EXAMPLE
  pwsh -File scripts\Check-Mod.ps1 -Brief
#>
param(
    # Le dossier publie : celui vers lequel pointe la jonction dans RimWorld\Mods.
    [string]$ModPath,
    # La version d'Extinct Animals a controler. Par defaut elle est cherchee parmi les mods
    # installes, par packageId (<loadAfter> de notre About.xml) puis par nom affiche (<mods>
    # du patch).
    [string]$TargetPath,
    [string[]]$SearchPath = @(
        'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100',
        'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Mods'
    ),
    [string]$GameVersion = '1.6',
    [switch]$Brief   # n'afficher que les problemes
)

$ErrorActionPreference = 'Stop'
$script:FailCount = 0
$script:WarnCount = 0

function Write-Head([string]$m) { if (-not $Brief) { Write-Host ''; Write-Host $m -ForegroundColor Cyan } }
function Write-Ok  ([string]$m) { if (-not $Brief) { Write-Host "  ok    $m" -ForegroundColor Green } }
function Write-Note([string]$m) { if (-not $Brief) { Write-Host "  .     $m" -ForegroundColor DarkGray } }
function Write-Warn([string]$m) { $script:WarnCount++; Write-Host "  WARN  $m" -ForegroundColor Yellow }
function Write-Bad ([string]$m) { $script:FailCount++; Write-Host "  FAIL  $m" -ForegroundColor Red }

# ---------------------------------------------------------------------------------------
# Emplacements
# ---------------------------------------------------------------------------------------

$RepoRoot = Split-Path -Parent $PSScriptRoot
if (-not $ModPath) { $ModPath = Join-Path $RepoRoot 'Mod' }
$ModPath = (Resolve-Path -LiteralPath $ModPath).Path

$AboutFile   = Join-Path $ModPath 'About\About.xml'
$PatchDir    = Join-Path $ModPath 'Patches'
$TextureRoot = Join-Path $ModPath 'Textures'

foreach ($p in @($AboutFile, $PatchDir, $TextureRoot)) {
    if (-not (Test-Path -LiteralPath $p)) { Write-Host "Introuvable : $p" -ForegroundColor Red; exit 2 }
}

# ---------------------------------------------------------------------------------------
# Lecture de notre propre mod
# ---------------------------------------------------------------------------------------

function Get-Text($node) { if ($node) { $node.InnerText.Trim() } else { $null } }

try { $AboutXml = [xml](Get-Content -LiteralPath $AboutFile -Raw) }
catch { Write-Host "About.xml illisible : $_" -ForegroundColor Red; exit 2 }

$MyName      = Get-Text $AboutXml.SelectSingleNode('/ModMetaData/name')
$MyPackageId = Get-Text $AboutXml.SelectSingleNode('/ModMetaData/packageId')
$MyUrl       = Get-Text $AboutXml.SelectSingleNode('/ModMetaData/url')
$MyLoadAfter = @($AboutXml.SelectNodes('/ModMetaData/loadAfter/li') | ForEach-Object { $_.InnerText.Trim() })

$PatchFiles = @(Get-ChildItem -LiteralPath $PatchDir -Filter *.xml -Recurse -File)
if ($PatchFiles.Count -eq 0) { Write-Host "Aucun patch dans $PatchDir" -ForegroundColor Red; exit 2 }

# Une operation gardee, telle que ce script la lit : les noms de la garde, l'xpath, le type
# et le defName qu'il vise, et les texPath que l'operation ajoute.
$Ops = @()
foreach ($pf in $PatchFiles) {
    try { $px = [xml](Get-Content -LiteralPath $pf.FullName -Raw) }
    catch { Write-Host "  FAIL  patch illisible : $($pf.Name) - $_" -ForegroundColor Red; $script:FailCount++; continue }

    foreach ($op in $px.SelectNodes("//Operation[@Class='PatchOperationFindMod']")) {
        $guard = @($op.SelectNodes('mods/li') | ForEach-Object { $_.InnerText })
        foreach ($add in $op.SelectNodes(".//li[@Class='PatchOperationAdd']")) {
            $xpath = Get-Text $add.SelectSingleNode('xpath')
            $defName = $null; $defType = $null
            $m = [regex]::Match($xpath, '/Defs/(?<type>\w+)\[\s*defName\s*=\s*"(?<name>[^"]+)"')
            if ($m.Success) { $defType = $m.Groups['type'].Value; $defName = $m.Groups['name'].Value }
            $Ops += [pscustomobject]@{
                File     = $pf.Name
                Guard    = $guard
                Xpath    = $xpath
                DefType  = $defType
                DefName  = $defName
                Success  = (Get-Text $add.SelectSingleNode('success'))
                TexPaths = @($add.SelectNodes('.//texPath') | ForEach-Object { $_.InnerText.Trim() })
            }
        }
    }
}

# ---------------------------------------------------------------------------------------
# Recensement des mods installes
#
# About.xml est lu au regex plutot qu'au parseur : il y en a un millier a traverser, et
# certains, ecrits a la main, ne passent pas [xml]. Le premier <name> rencontre est le bon ;
# les <li> de <modDependencies> portent <displayName>, pas <name>.
# ---------------------------------------------------------------------------------------

function Get-InstalledMods([string[]]$roots, [switch]$Direct) {
    $found = @()
    foreach ($root in $roots) {
        if (-not (Test-Path -LiteralPath $root)) { continue }
        $dirs = if ($Direct) { Get-Item -LiteralPath $root } else { Get-ChildItem -LiteralPath $root -Directory -ErrorAction SilentlyContinue }
        foreach ($dir in $dirs) {
            $about = Join-Path $dir.FullName 'About\About.xml'
            if (-not (Test-Path -LiteralPath $about)) { continue }
            $raw = $null
            try { $raw = Get-Content -LiteralPath $about -Raw -ErrorAction Stop } catch { continue }
            $idM = [regex]::Match($raw, '<packageId>\s*([^<]+?)\s*</packageId>', 'IgnoreCase')
            $nmM = [regex]::Match($raw, '<name>\s*([^<]+?)\s*</name>', 'IgnoreCase')
            # Sans <name>, ModMetaData.Name est nul : aucune garde ne peut designer ce mod.
            $nm = if ($nmM.Success) { $nmM.Groups[1].Value } else { '' }
            $found += [pscustomobject]@{
                Dir       = $dir.FullName
                Folder    = $dir.Name
                Name      = $nm
                PackageId = $(if ($idM.Success) { $idM.Groups[1].Value } else { '' })
            }
        }
    }
    return $found
}

# La recherche des candidats, elle, ignore la casse a dessein : un mod dont le nom ne differe
# que par une majuscule doit etre trouve ici pour pouvoir etre signale plus bas.
$GuardNames = @($Ops | ForEach-Object { $_.Guard } | Select-Object -Unique)
$Targets = @()

if ($TargetPath) {
    $td = (Resolve-Path -LiteralPath $TargetPath).Path
    $Targets = @(Get-InstalledMods -roots @($td) -Direct)
    if ($Targets.Count -eq 0) { Write-Host "Pas d'About.xml sous $td" -ForegroundColor Red; exit 2 }
} else {
    $all = Get-InstalledMods $SearchPath
    $Targets = @($all | Where-Object {
        ($MyLoadAfter -contains $_.PackageId) -or ($GuardNames -contains $_.Name)
    })
    # Deux jonctions peuvent pointer sur le meme dossier ; un mod ne compte qu'une fois.
    $Targets = @($Targets | Sort-Object PackageId, Name -Unique)
}

# ---------------------------------------------------------------------------------------
# Dossiers de defs du mod cible, LoadFolders.xml compris
# ---------------------------------------------------------------------------------------

function Get-LoadFolders([string]$modDir, [string]$version) {
    $lfFile = Join-Path $modDir 'LoadFolders.xml'
    $out = @()
    if (Test-Path -LiteralPath $lfFile) {
        try {
            $lx = [xml](Get-Content -LiteralPath $lfFile -Raw)
            $vNode = $lx.DocumentElement.SelectSingleNode("*[local-name()='v$version']")
            if ($vNode) {
                foreach ($li in $vNode.SelectNodes('li')) {
                    $rel = $li.InnerText.Trim()
                    $cond = $null
                    foreach ($a in @('IfModActive', 'IfModNotActive')) {
                        if ($li.HasAttribute($a)) { $cond = "$a=$($li.GetAttribute($a))" }
                    }
                    $path = if ($rel -eq '/' -or $rel -eq '') { $modDir } else { Join-Path $modDir ($rel -replace '/', '\') }
                    if (Test-Path -LiteralPath $path) {
                        $out += [pscustomobject]@{ Path = $path; Rel = $rel; Cond = $cond }
                    }
                }
                return $out
            }
        } catch { }
    }
    # Sans LoadFolders.xml : le dossier de version s'il existe, puis Common, puis la racine.
    foreach ($rel in @($version, 'Common', '/')) {
        $path = if ($rel -eq '/') { $modDir } else { Join-Path $modDir $rel }
        if (Test-Path -LiteralPath $path) { $out += [pscustomobject]@{ Path = $path; Rel = $rel; Cond = $null } }
    }
    return $out
}

function Get-DefFiles($folder) {
    $d = Join-Path $folder.Path 'Defs'
    if (-not (Test-Path -LiteralPath $d)) { return @() }
    return @(Get-ChildItem -LiteralPath $d -Filter *.xml -Recurse -File -ErrorAction SilentlyContinue)
}

# ---------------------------------------------------------------------------------------
# 1. La cible existe    /    2. La garde correspond
#
# Les deux se repondent avec le meme balayage, et la vraie question les relie : le nom de la
# garde et le defName de l'xpath doivent designer le meme mod, dans la meme operation.
# ---------------------------------------------------------------------------------------

Write-Head "Mods Extinct Animals installes"
if ($Targets.Count -eq 0) {
    Write-Warn "aucun trouve sous : $($SearchPath -join ' ; ')"
    Write-Warn "les controles 1 et 2 ne peuvent pas conclure"
} else {
    foreach ($t in $Targets) {
        $shown = if ($t.Name) { "`"$($t.Name)`"" } else { "(sans <name>, dossier $($t.Folder))" }
        Write-Note "$shown   [$($t.PackageId)]   $($t.Dir)"
    }
}

Write-Head "1. L'xpath du patch trouve le dodo"
$anyOpResolved = $false

foreach ($op in $Ops) {
    $label = "$($op.DefType) $($op.DefName)"
    if (-not $op.DefName) { Write-Warn "xpath non reconnu, defName illisible : $($op.Xpath)"; continue }

    $guarded = @($Targets | Where-Object { $_.Name -and ($op.Guard -ccontains $_.Name) })
    if ($guarded.Count -eq 0) {
        # Cas prevu : l'operation RG-EAP_Dodo vise le pack d'origine de Helixien, qui ne
        # tourne pas en 1.6. Son silence est voulu, pas rate.
        Write-Note "$label - aucun mod installe ne porte un des noms de la garde, operation inerte ici"
        continue
    }

    foreach ($t in $guarded) {
        $folders = Get-LoadFolders $t.Dir $GameVersion
        $hits = @()
        foreach ($f in $folders) {
            foreach ($df in (Get-DefFiles $f)) {
                try { $dx = [xml](Get-Content -LiteralPath $df.FullName -Raw) } catch { continue }
                $nodes = $dx.SelectNodes($op.Xpath)
                if ($nodes.Count -gt 0) {
                    $hits += [pscustomobject]@{ Folder = $f; File = $df; Nodes = $nodes }
                }
            }
        }
        if ($hits.Count -eq 0) {
            Write-Bad "$label introuvable dans $($t.Name) - le patch se poserait sur rien"
            Write-Note "dossiers lus : $(($folders | ForEach-Object { $_.Rel }) -join ' ; ')"
            continue
        }
        $anyOpResolved = $true
        foreach ($h in $hits) {
            Write-Ok "$label trouve dans $($t.Name) : $($h.Folder.Rel) -> $($h.File.Name)"
            if ($h.Folder.Cond) {
                Write-Warn "ce dossier est conditionnel ($($h.Folder.Cond)) - la cible peut ne pas etre chargee"
            }
            foreach ($n in $h.Nodes) {
                if ($n.SelectSingleNode('alternateGraphics')) {
                    Write-Warn "$label porte deja un <alternateGraphics> - PatchOperationAdd en ajouterait un second"
                }
            }
        }
        if ($hits.Count -gt 1) {
            Write-Warn "$label defini dans $($hits.Count) fichiers de $($t.Name) - le patch s'appliquerait a chacun"
        }
    }
}
if (-not $anyOpResolved -and $Targets.Count -gt 0) {
    Write-Bad "aucune operation ne trouve sa cible - le mod ne colorerait aucun oiseau"
}

Write-Head "2. Le nom de la garde est celui que le mod affiche aujourd'hui"
foreach ($t in $Targets) {
    if (-not $t.Name) {
        Write-Bad "le mod $($t.Folder) n'a pas de <name> - aucune garde ne peut le designer"
        continue
    }
    $opsForMod = @($Ops | Where-Object { $_.Guard -ccontains $t.Name })
    if ($opsForMod.Count -gt 0) {
        Write-Ok "`"$($t.Name)`" figure dans la garde de : $(($opsForMod | ForEach-Object { $_.DefName }) -join ', ')"
        continue
    }
    # Le nom n'est pas dans la garde. Un ecart de casse ou d'espaces suffit a le mettre hors
    # d'atteinte, et c'est la panne qui ne se voit nulle part ailleurs.
    $mine = ($t.Name -replace '\s+', ' ').Trim()
    $near = @($GuardNames | Where-Object { ($_ -replace '\s+', ' ').Trim() -ieq $mine })
    if ($near.Count -gt 0) {
        Write-Bad "`"$($t.Name)`" absent de la garde ; `"$($near[0])`" n'en differe que par la casse ou les espaces, et ne l'atteint pas"
    } else {
        Write-Bad "`"$($t.Name)`" ne figure dans aucune garde : ajouter <li>$($t.Name)</li>, sans retirer les autres"
    }
}
foreach ($g in ($GuardNames | Sort-Object -Unique)) {
    if (-not ($Targets | Where-Object { $_.Name -ceq $g })) {
        Write-Note "`"$g`" ne correspond a aucun mod installe - garde conservee pour les anciennes versions du jeu"
    }
}

# ---------------------------------------------------------------------------------------
# 3. Les textures
#
# Graphic_Multi cherche _north, _east, _south, _west. L'absence de _west est normale ici :
# RimWorld retourne _east. L'absence de _north ne se voit qu'en regardant un oiseau de dos.
# ---------------------------------------------------------------------------------------

Write-Head "3. Les textures existent, et aucune ne traine"

$opsWithTex = @($Ops | Where-Object { $_.TexPaths.Count -gt 0 })
$refPaths = @($opsWithTex | ForEach-Object { $_.TexPaths } | Sort-Object -Unique)

if ($opsWithTex.Count -gt 1) {
    $sameList = $true
    $ref = ($opsWithTex[0].TexPaths -join '|')
    foreach ($op in $opsWithTex[1..($opsWithTex.Count - 1)]) {
        if (($op.TexPaths -join '|') -ne $ref) {
            $sameList = $false
            Write-Bad "les operations ne posent pas la meme liste de texPath ($($opsWithTex[0].DefName) vs $($op.DefName))"
        }
    }
    if ($sameList) { Write-Ok "$($opsWithTex.Count) operations, la meme liste de $($refPaths.Count) texPath dans chacune" }
}

$expected = @{}
$rotations = @('north', 'east', 'south', 'west')
foreach ($tp in $refPaths) {
    $present = @()
    foreach ($r in $rotations) {
        $file = Join-Path $TextureRoot (($tp -replace '/', '\') + "_$r.png")
        if (Test-Path -LiteralPath $file) {
            $present += $r
            $expected[(Resolve-Path -LiteralPath $file).Path] = $true
        }
    }
    $missing = @(@('north', 'south') | Where-Object { $present -notcontains $_ })
    if (-not ($present -contains 'east' -or $present -contains 'west')) { $missing += 'east' }
    if ($missing.Count -gt 0) {
        Write-Bad "$tp : rotation manquante -> $($missing -join ', ')"
    } else {
        $note = if ($present -contains 'west') { '' } else { ' (pas de _west : RimWorld retourne _east)' }
        Write-Ok "$tp : $($present -join ', ')$note"
    }
}

$allPng = @(Get-ChildItem -LiteralPath $TextureRoot -Filter *.png -Recurse -File -ErrorAction SilentlyContinue)
$orphans = @($allPng | Where-Object { -not $expected.ContainsKey($_.FullName) })
if ($orphans.Count -gt 0) {
    foreach ($o in $orphans) {
        $rel = $o.FullName.Substring($TextureRoot.Length + 1) -replace '\\', '/'
        Write-Bad "texture jamais appelee : $rel"
    }
} else {
    Write-Ok "aucune texture orpheline"
}
Write-Note "$($allPng.Count) PNG sous Textures, pour $($refPaths.Count) texPath"

# Un texPath identique a celui du mod cible remplacerait sa texture au lieu de s'ajouter.
foreach ($t in $Targets) {
    foreach ($f in (Get-LoadFolders $t.Dir $GameVersion)) {
        foreach ($tp in $refPaths) {
            foreach ($r in $rotations) {
                $clash = Join-Path $f.Path ('Textures\' + ($tp -replace '/', '\') + "_$r.png")
                if (Test-Path -LiteralPath $clash) {
                    Write-Warn "$tp`_$r existe aussi dans $($t.Name) - notre fichier ecraserait le sien"
                }
            }
        }
    }
}

# ---------------------------------------------------------------------------------------
# 4. Le nom, l'identifiant et le dossier
# ---------------------------------------------------------------------------------------

Write-Head "4. Le nom, l'identifiant et le dossier disent la meme chose"

function Get-Squashed([string]$s) { ($s -replace '[^A-Za-z0-9]', '').ToLowerInvariant() }

$FolderName = Split-Path -Leaf $RepoRoot
# Le statut de publication appartient au titre affiche, pas au nom du dossier.
$IdentityName = $MyName -replace '\s*\((?:unofficial|prohibited)\)\s*$', ''
$nName   = Get-Squashed $IdentityName
$nFolder = Get-Squashed $FolderName

if ($nName -eq $nFolder) { Write-Ok "`"$MyName`" et le dossier $FolderName" }
else { Write-Bad "`"$MyName`" donne $nName, le dossier $FolderName donne $nFolder" }

if ($MyPackageId -cne $MyPackageId.ToLowerInvariant()) {
    Write-Warn "packageId avec des majuscules : $MyPackageId"
}
$seg = @($MyPackageId -split '\.')
if ($seg.Count -lt 2) {
    Write-Bad "packageId sans auteur : $MyPackageId"
} else {
    $nId = Get-Squashed (($seg[1..($seg.Count - 1)]) -join '')
    if ($nId -eq $nFolder) { Write-Ok "$MyPackageId, auteur $($seg[0]) mis a part" }
    else { Write-Bad "$MyPackageId donne $nId apres l'auteur, le dossier donne $nFolder" }
}

if ($MyUrl) {
    $slug = ($MyUrl -replace '/+$', '') -replace '.*/', ''
    if ((Get-Squashed $slug).EndsWith($nFolder)) { Write-Ok "l'url finit sur $slug" }
    else { Write-Warn "l'url finit sur $slug, qui ne reprend pas $FolderName" }
}

# La jonction publiee porte-t-elle le meme nom ?
foreach ($root in $SearchPath) {
    $j = Join-Path $root $FolderName
    if (Test-Path -LiteralPath $j) { Write-Ok "jonction $j" }
}

# ---------------------------------------------------------------------------------------

Write-Host ''
if ($script:FailCount -eq 0 -and $script:WarnCount -eq 0) {
    Write-Host "Les quatre controles passent." -ForegroundColor Green
} else {
    $col = if ($script:FailCount -gt 0) { 'Red' } else { 'Yellow' }
    Write-Host "$($script:FailCount) echec(s), $($script:WarnCount) avertissement(s)." -ForegroundColor $col
}
Write-Host "Ces quatre controles ne disent rien de l'oiseau a l'ecran : voir TESTING.md, scenarios A a H." -ForegroundColor DarkGray

if ($script:FailCount -gt 0) { exit 1 } else { exit 0 }
