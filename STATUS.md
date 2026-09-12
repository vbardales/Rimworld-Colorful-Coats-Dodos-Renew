---
settings_audit: not_applicable
localization: not_applicable
translation_en: not_applicable
translation_fr: not_applicable
mod:          Colorful Coats - Dodos! Renew (unofficial)
packageId:    nelim.colorfulcoats.dodosrenew
repo:         Rimworld-Colorful-Coats-Dodos-Renew
remote:       https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew.git
local_path:   C:/Users/nelim/Documents/rimworld/ColorfulCoatsDodosRenew
maintainer:   Codex, current repository task
visibility:   silent
github_visibility: public
detached:     yes
stage:        done
licence:      silent
licence_port: MIT, port additions only
licence_original: no declared licence found in installed original or live Steam description
visibility_checked: 2026-09-12, original files and live Steam description
licence_at:   LICENSE, Mod/LICENSE, Mod/About/About.xml, ATTRIBUTION.md
title_suffix: (unofficial), already present
github_description: present
dependencies: declared
showcase:     complete
static_checks: passed, 2026-09-13, Check-Mod.ps1 against installed Continued 1.6 target
tested_on:
workshop:
remaining:
  - unverified: README and About claims of in-game testing and save safety have no recorded execution evidence
  - unverified: in-game scenarios A-H in TESTING.md, no recorded game validation
session:      local_1a82a4f4-4e37-4fcb-87b4-1b86d5c52392
updated:      2026-09-13, dependency prose aligned and static checks passed; stage advanced to done
---

# Colorful Coats - Dodos! Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it.

Codex now maintains this file for this repository and updates it as work progresses.
The local Git root is the folder above, with its own `.git` directory and no Git superproject.
This task covers this standalone repository, no longer the monorepo.
GitHub CLI confirmed PUBLIC visibility on 2026-09-12; origin fetch and push use the remote above.

The mod title in `Mod/About/About.xml` already ends with `(unofficial)`, consistent with the
unofficial port notice. No additional suffix is needed. The description itself includes
`https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew`; the `<url>` field matches it.

Both `LICENSE` and `Mod/LICENSE` grant MIT only for the port additions: patch changes,
showcase art, packaging and documentation. They explicitly exclude purpleyam's original
coats, chances and 21 textures. The repository records no declared licence for those original
elements; original files and the live Steam description were independently rechecked on 2026-09-12.
The `silent` classification is retained for the original material, not for the port additions.

Historical stage was `done`. The 2026-09-13 audit and attribution correction below supersede that decision.
Game validation is recorded separately in `tested_on` and the relevant `remaining` entries;
Its absence does not block the `done` stage.
The tracking fields use these conventions:

- **`stage`** — the exact state name from the user's cumulative workflow; see the
  sequence and interpretation in the latest audit below.
- **`tested_on`** — the date of the last run in game. Empty means never.
- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.
- **`remaining`** — what is left, in three kinds: `feature` for something missing from a first
  release, `defect` for a known fault left unfixed, `unverified` for what could not be checked.
  The line already there is true of nearly the whole repository; replace it once it stops being.

`visibility` records the mod's provenance and permission category: `original` for original work,
`open` for an explicit upstream licence, `silent` for no declared upstream licence,
and `forbidden` for an explicit refusal. Here it is `silent`, because the original material
has no declared licence according to the repository attribution. The MIT licence for the port
additions does not change that category. `licence` retains the same classification for compatibility.
`github_visibility` separately records whether the GitHub repository is public or private.

## Visibility recheck — 2026-09-12

`visibility: silent` retained after checking:

- Installed original: `C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/2388053651`.
  File inventory contains no licence file. Its `About/About.xml` has no licence, permission
  statement or repository URL; supported versions are 1.2, 1.3 and 1.4.
  Searches of the original XML/text files found no redistribution grant or explicit refusal.
- [Original Steam page](https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651&l=english),
  fetched directly during this recheck: description contains no licence, redistribution grant,
  explicit refusal or GitHub link. It credits Erin for the original texture and purpleyam for
  the colour variants. No separate licence for Erin's underlying texture was established here.
- The port's MIT grant remains limited to its additions. No evidence found warrants changing
  the category to `open`, `original` or `forbidden`. Absence of a grant is not implicit permission.

Expanded Steam audit: all six public Workshop items listed on purpleyam's profile were checked
directly, including descriptions, all 151 comments, all 19 changelog entries and discussion
indexes (zero topics for every item). Comment counts returned by Steam matched the number
of comments retrieved, so this was not limited to the first page.

| Workshop item | ID | Comments checked | Changelog entries |
| --- | --- | ---: | ---: |
| Colorful Coats - Dodos! | 2388053651 | 13 | 4 |
| Scarification for Everyone | 2648112257 | 13 | 2 |
| More Ideological Words | 2643795171 | 59 | 3 |
| Colorful Coats - Megafauna! | 2560113727 | 15 | 2 |
| Colorful Coats - Vanilla Animals Expanded! | 2398446130 | 31 | 5 |
| Colorful Coats - Cats and Dogs! | 2388932599 | 20 | 3 |

Also checked the public [author profile](https://steamcommunity.com/profiles/76561198342847927/),
[Workshop listing](https://steamcommunity.com/profiles/76561198342847927/myworkshopfiles/?appid=294100)
and [author collection](https://steamcommunity.com/sharedfiles/filedetails/?id=2773216059)
(six items, zero comments/discussions). No author repository link or general reuse policy found.

Relevant exception: on [More Ideological Words](https://steamcommunity.com/sharedfiles/filedetails/?id=2643795171),
purpleyam permits translations on 2022-02-15 and 2022-08-25. Those replies address translations
of that mod; they do not grant permission to redistribute the dodo textures or all of the author's
mods. The GitHub reference in that item's comments is Sarg Bjornson suggesting his own code,
and a linked Gist is a third-party error log, not purpleyam's repository.

An author reply on 2024-04-03 discusses checking their mods for 1.5, so the original's 1.4
declaration must not be used to assert author inactivity or abandonment. No new permission
or refusal applicable to Dodos was found: `visibility: silent` remains the supported category.
Scope covers these public Steam pages as retrieved on 2026-09-12, not deleted/private content
or private correspondence; no message was sent to the author.
Firecrawl CLI was unavailable; web search and a direct HTTP fetch were used instead.

## Preview overlay — 2026-09-12

- Final output: `Mod/About/Preview.png`, 896 × 504, 341,177 bytes (under 900 KB).
- Text-free illustration: `Art/Preview.png`, copied unchanged from `Art/Preview-source.png`.
  No illustration replacement or generation; the original source remains available at that path.
- Composition and layout parameters: `Art/preview.html`; reproducible capture and contrast
  checks: `Art/render-preview.cjs` (Node.js, Playwright, Sharp, installed Chrome).
- Sole colour reference: `Art/preview-palette.json`, loaded by the HTML.
  The veil follows the brown earth and wood shadows of the large background surfaces.
  The vivid blue accent comes from the blue dodo's plumage, with increased saturation and
  lightness. The secondary ink follows the dominant ochre earth/wood family, lightened to
  a coloured golden tone for contrast. The cool blue accent clearly separates from this warm
  ochre family at both output sizes. These are subject and material choices, not pixel averages.
- Existing title and summary retained; `(unofficial)` moved to its dedicated tag line.
  Updated title hierarchy: `Renew` is a direct span at 0.65em (29.9 px), weight 600,
  using secondary ink; the strong title words stay at 46 px in primary ink. No nested reduction.
  Badge `1.6` is the highest stable supported version declared in `Mod/About/About.xml`.
- Actual fonts confirmed through Chrome's platform-font API: Segoe UI Semibold for the
  title, Segoe UI regular for tag/summary, Segoe UI Bold for version. No fallback.
  Capture waits for `document.fonts.ready`. Title 46 px; remaining metrics follow the guide.
- Dark coloured veil uses an extended opacity plateau (.96 at origin, .90 through 48%,
  fading to zero at 100% in an 800 × 620 px ellipse) to keep the full summary above 4.5:1.
  Title, tag and summary retain the guide's dark-veil shadow; badge digits have no shadow.
- Contrast measured against every background pixel within each text rectangle, with text
  and shadows hidden: primary title 5.18:1, `Renew` 5.09:1, tag 5.11:1,
  summary 4.65:1; badge 6.69:1.
  Evidence: `Art/preview-qa.json` and `Art/preview-background.png`.
- Visually checked at 896 × 504 and 268 px wide (`Art/preview-268.png`): title and version
  identifiable, reduced `Renew` readable, blue rule visible and distinct from the golden
  secondary ink, no clipping or overlap. Summary is intended for full-size reading.
- Preview committed and pushed to GitHub in `86393b0`; no Steam publication performed.
  In-game test status is unchanged.

## Translation audit — 2026-09-13

Applied the translation gate in the shared `../PUBLISHING.md` and
`../TRANSLATIONS.md` to the working tree based on commit
`1713e41be5f04a53d004bd47bac5b4f92afef418`, including the current About metadata.
All three translation fields are `not_applicable`: this mod adds or changes no
player-facing in-game text.

- Inventory: recursively inspected all published files under `Mod/`: two XML files,
  23 PNGs (21 coat textures and two About images), `LICENSE` and `ATTRIBUTION.md`.
  The repository has no gameplay source, assembly, Defs, language resources,
  `LoadFolders.xml`, version folders or additional optional integrations.
- Read both conditional branches in `Mod/Patches/ColorfulCoats_HlxDodo.xml`, targeting
  `RG-EAP_Dodo` and `RG_Dodo`. Each adds only `alternateGraphicChance` and seven
  `alternateGraphics/li/texPath` values. Neither adds or replaces labels,
  descriptions, grammar, messages or other text fields. The mod-name guards,
  XPath defNames and texture paths are internal matching data, not translation keys.
- Evidence: `Get-ChildItem Mod -Recurse -File` established the full file inventory;
  parsing the patch as XML and grouping `//value//*[not(*)]` returned exactly two
  `alternateGraphicChance` and 14 `texPath` leaves. Reading the full patch confirmed
  the scope of both branches. A text search for translation calls, keys, labels,
  descriptions and load folders found only About description metadata.
- English and French: zero owned in-game strings, keys or injection paths to cover.
  Dodo text remains supplied by the dependency; this patch does not reuse translation
  keys or override that text. Dependency translation completeness is not certified
  by this audit. No empty language folders or duplicate dependency translations are
  needed, and `Check-DefInjected.ps1` is not applicable without injection resources.
- Exclusions: About metadata, showcase text, licences and repository documentation
  follow the publishing rules outside the in-game translation gate.
- Runtime: no translation-specific UI or generated text exists to exercise in either
  language. No game run is claimed; scenarios A–H remain unverified in `remaining`,
  and `tested_on` stays empty. The historical `done` stage is preserved.

Repeat this inventory after changes to patches, Defs, UI code or language resources.
Reset affected translation fields to `unchecked` until revalidation; any newly owned
in-game text requires English and French coverage and separate runtime checks.

## Technical validation — 2026-09-12

`scripts/Check-Mod.ps1 -TargetPath 'C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/3602926791'`
passed all four checks with no warnings: RG_Dodo xpath resolves, display-name guard matches,
all 21 textures resolve without orphans, and name/packageId/folder agree.
The checker ignores only trailing `(unofficial)` / `(prohibited)` for folder identity and
reads an explicit target directly without scanning sibling Workshop folders.
This is static validation, not a game run; `tested_on` remains empty, independently of `stage`.
`dependencies: declared`: `Mod/About/About.xml` now explicitly requires
`Mlie.ReGrowthExtinctAnimals` (ReGrowth: Extinct Animals (Continued)), with its Steam and
GitHub links verified against the installed target metadata. The existing load order is retained.
Historical guards remain in the patch, but the delivered 1.6 mod requires the Continued release.

## Cumulative workflow audit — 2026-09-13

Audited at approximately 01:48 CEST, against HEAD
`1713e41be5f04a53d004bd47bac5b4f92afef418` and the actual working tree.
At entry, `Mod/About/About.xml`, `STATUS.md` and `TESTING.md` already had local
changes: respectively the Continued dependency declaration, prior audit records,
and corresponding dependency scenarios. These changes were included and preserved.
This audit changes only STATUS.md; no development, image generation, publication,
commit, game launch, save change or historical-result replacement was performed.
The four shared protocols were read; the user's workflow takes precedence,
especially its explicit allowance for source-only no-settings verification.

### Decision and state names

**Previous `done` -> retained `dansMonoRepo`.** These are workflow gate names,
not a claim that the repository has moved back into the monorepo. Its independent
Git repository is verified. The first transition is incomplete because the required
distributed attribution copy is materially stale. No Git move or remote restoration
is required. An absent monorepo remote is irrelevant.

The exact state sequence used here is `dansMonoRepo` -> `horsMonoRepo` ->
`ModIcon générée` -> `Preview générée` -> `preOptions` -> `options` -> `l10n` ->
`preTest` -> `done` -> `tested`. No legacy `port`/`showcase` code is used as `stage`.
Later component validations below survive the earlier cumulative block.

| Transition | Current component result and evidence |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Defect found.** `Mod/ATTRIBUTION.md` still says the source is dead because it stops at 1.4, whereas the root attribution explicitly rejects that inference. It omits the root's Erin base-texture credit and updated permission assessment. PUBLISHING.md explicitly requires synchronizing the distributed copy. Other repository/identity/licence checks pass as detailed below. |
| horsMonoRepo -> ModIcon générée | **Validated independently.** XML-only implementation, no source project or assembly requiring a build; checker passes. Installed icon decodes as PNG, 128 x 128, 34,700 bytes, directly inspected. |
| ModIcon générée -> Preview générée | **Validated independently.** Installed PNG directly inspected, 896 x 504, 341,177 bytes. No concrete camera defect found. No historical generation report or comparison screenshot is required. |
| Preview générée -> preOptions | **Defect found in publishing description.** English text, Renew hierarchy, separate unofficial tag, and blue accent versus golden secondary ink are present. However, About's description uses a raw GitHub URL and does not end with the mandatory `[url=...]Source code on GitHub[/url]` link required by PUBLISHING.md. |
| preOptions -> options | **Not applicable, justified.** Settings audit below establishes absence of relevant settings, empty page and shortcut. |
| options -> l10n | **Not applicable, justified.** Full current patch inventory contains no owned in-game strings. Previous translation findings revalidated after the settings audit. |
| l10n -> preTest | **Technical declaration validated independently.** Required Continued packageId, 1.6 support, exact display-name guard and load order match installed metadata; target loads unconditionally from 1.6. Description/README alternative-release claims remain inconsistent with the new mandatory dependency and must be aligned. |
| preTest -> done | **Automated/XML checks validated independently.** Existing Check-Mod.ps1 was read and executed successfully on the delivered tree. It supplies meaningful automated XML/target/asset tests for this XML-only mod; separate C# tests/build are not applicable. Functional scenarios A-H are written, with shared load order and scenario actions/expectations. They do not constitute executed game tests. |
| done -> tested | **Not verified.** No execution evidence for A-H tied to this delivered tree; no checked game logs or FR/EN UI observations, new-game/existing-save checks, or save persistence/removal results. `tested_on` stays empty. |

### Repository, rights and distributed content

- `git rev-parse --show-toplevel --show-superproject-working-tree` confirms this
  standalone root and no Git superproject. Distributed content is this root's `Mod/`.
- Live read-only `gh repo view ... --json name,visibility,url,defaultBranchRef`
  returned the expected PUBLIC repository and `main`. `git ls-remote origin HEAD`
  returned the exact audited HEAD above, establishing a pushed commit. Initial
  sandbox access failed; the approved read-only retry succeeded, so this is verified.
- Name, lowercase packageId, repository slug and folder conventions pass the checker.
  About and README have the correct `(unofficial)` suffix and notice.
- `silent` remains a no-grant classification, not permission. The dated 2026-09-12
  public-source investigation remains historical evidence, not a new web review.
  Current original-file inventory confirms no licence file in Workshop item 2388053651.
  All 21 delivered texture SHA256 hashes match that installed original.
- LICENSE and Mod/LICENSE are byte-identical and restrict MIT to port additions,
  excluding the original content. Root README, ATTRIBUTION, LICENSE and CHANGELOG
  exist in English. Their existence does not cure the stale distributed attribution.
- README still claims abandonment and says work included in-game testing; About also
  claims in-game testing and save safety. Testing/safety are **unverified claims**,
  not proven gameplay failures. The dependency prose is a **confirmed inconsistency**:
  it allows whichever release although the delivered About requires Continued on 1.6.

### Settings audit and localization revalidation

Inventory covered every delivered file: 2 XML files, 23 PNGs, LICENSE and ATTRIBUTION.
There are no gameplay sources, DLLs, Defs, settings files, MainButtonDefs, LoadFolders,
version folders or language resources in this mod. Both patch branches were read.
They add only the inherited design value `alternateGraphicChance = 0.8` and seven
alternate texture paths to a dependency-owned PawnKindDef. The chance and coat list
define the fixed cosmetic pack; no advertised user configuration, manual-XML workflow,
inherited configurable behavior or unmet settings need was identified. Turning this
into a configurable framework is not needed to audit its stated purpose.

There is therefore no meaningful options page to verify, no empty page and no
shortcut definition. Settings defaults/input/persistence/UI tests are not applicable;
coat selection and per-animal persistence remain game scenarios A-C. No RIMMSQOL or
other customization integration was tested or is claimed. This justifies
`settings_audit: not_applicable` under the user's explicit source-audit rule.

Parsing and inspecting `//value//*[not(*)]` yields exactly two chance values and
14 texPath leaves, with no labels, descriptions, keys, parameters or injection paths.
About metadata is outside this localization gate. No English/French resource is
needed for zero owned strings; no duplicate dependency translations or artificial
language folders are warranted. Check-DefInjected is not applicable. The dependency's
translations are outside this mod's certification. FR/EN mod-list display remains
part of final game validation, not a fabricated localization pass in game.

### Executed technical and visual checks

Command: `pwsh -NoProfile -File scripts/Check-Mod.ps1 -TargetPath 'C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/3602926791'`.
Result: **exit 0; all four checks pass, zero warnings**. The current RG_Dodo XPath
resolves in `1.6/Defs/ThingDefs_Races/Races_ReGrowth_Extinct_limited.xml`, its guard
matches case-sensitively, both branches have the same seven paths, all 21 rotations
exist with no orphans, and naming conventions pass. The legacy RG-EAP_Dodo branch
is inactive against this 1.6 target; legacy-game operation is not claimed as tested.
Both delivered XML files also parsed successfully in a separate direct check.

Installed dependency metadata identifies `Mlie.ReGrowthExtinctAnimals`, supports 1.6,
and matches the declared download URL. Its own VEF requirement remains transitive;
this texture patch uses no VEF types and needs no redundant direct dependency.
Its LoadFolders loads `/` and `1.6` unconditionally, plus a conditional
`Mods/1.6/RegrowthNotLoaded` folder; RG_Dodo is in the unconditional folder.
Old guard names/loadAfter entries do not make legacy releases alternatives to the
declared required Continued package. No optional settings integration is required.

Directly viewed Mod/About/Preview.png, Mod/About/ModIcon.png and Art/preview-268.png.
Title, Renew, tag and badge remain identifiable; the blue rule separates from the
warm secondary ink and no clipping/overlap was found. Art/preview.html loads the
single palette JSON and uses the 0.65em Renew span. Existing Art/preview-qa.json
records contrasts 5.18/5.09/5.11/4.65 and badge 6.69 plus actual Segoe fonts; those
numerical measurements were **not rerun**. The rendered files are unchanged from
HEAD. Source art and historical QA files were preserved.

Audited delivered SHA256 fingerprints:

| File | SHA256 |
| --- | --- |
| Mod/About/About.xml | C7EABA76CA5E722D605C4F64BC31F7A8517D8A5B1FA1D14ECB733B6099D26C62 |
| Mod/Patches/ColorfulCoats_HlxDodo.xml | 3229F81D3345F44638D87A21F469AA2E74C6F75A423342F4949EB7F0B05BCF40 |
| Mod/About/Preview.png | 9A291F6E5A0BB6A729C81A2CA0CF4EE29D7795C4096D9CC1BC5351943167193B |
| Mod/About/ModIcon.png | C9E6D2972979370C41FD5FE06D91CEF8AD1D8F034E12C5787E3AA1967CA16CAF |

### Next transition and separate follow-up

Strictly to pass `dansMonoRepo -> horsMonoRepo`: synchronize Mod/ATTRIBUTION.md
with the reviewed root attribution, preserving the original credits and restricted
rights statement, then verify their equality. No new repository, push, licence grant,
image generation or game run is needed for this transition.

Before later gates, correct the required description link and dependency prose;
record actual final game results before claiming `tested`. Existing game claims
should be qualified until supported. Do not treat absent game evidence as an observed
bug. Optional editorial cleanup: the checker contains French comments despite the
shared English convention, and TESTING scenario H's banner wording could explicitly
distinguish the Renew title from its separate 1.6 badge. These do not block the next gate.

## Attribution correction — 2026-09-13

At the user's request, copied the reviewed root ATTRIBUTION.md to Mod/ATTRIBUTION.md.
The distributed copy now includes Erin's base-texture credit and the qualified
`silent` permission assessment, without inferring abandonment from the 1.4 version
limit. No licence grant was added. Both copies have identical SHA256:
`359778DEE5CC685AC899568EFFBA6F7542B31FD68F8E863DB7FEBC9E23C454C6`.

This resolves the first-transition defect recorded in the historical audit above.
The independently validated icon and Preview gates remain valid, so the cumulative
stage advances from `dansMonoRepo` to `Preview générée`. The next transition to
`preOptions` remains blocked by the missing final Steam-formatted GitHub source link
in About's description. Other remaining findings are unchanged.

Only the distributed attribution and this status follow-up were changed for this
request. Existing About.xml and TESTING.md edits were preserved; no game tests,
publication or commit were performed. Document equality and `git diff --check`
were verified; this documentation-only correction requires no gameplay regression run.

## Description source link correction — 2026-09-13

Replaced the raw source URL paragraph in Mod/About/About.xml with the required
Steam-formatted `Source code on GitHub` link at the very end of the description,
after the credits and adoption clause. The target matches the About `url` and
the repository verified live during this audit. The XML parses and the exact
final-link assertion passes; `git diff --check` reports no whitespace errors.

This resolves the Preview-to-preOptions description-link defect. The existing
justified no-settings and no-owned-strings validations are unaffected, advancing
the cumulative stage from `Preview générée` to `l10n`. Before `preTest`, align
README/About dependency prose with the mandatory Continued package declaration;
that previously recorded inconsistency remains unresolved. Game evidence remains
unverified and `tested_on` stays empty. Historical audit results above are retained.

This change affects only About description text and STATUS.md. No Steam update,
commit or game test was performed, and existing local changes were preserved.

## Dependency documentation correction — 2026-09-13

At the user's request, first committed the preceding audit, attribution, source-link
and dependency-scenario changes as
`4e8b9a1b2402c4a120524fdbbcde413f3538c909`.
Then updated README.md and Mod/About/About.xml to state that this 1.6 build requires
`Mlie.ReGrowthExtinctAnimals` and loads after it. Both documents now distinguish
historical name guards from supported dependency alternatives, including the
explanation of the original guard fix. No gameplay patch or dependency declaration
was changed by this follow-up.

Re-executed `pwsh -NoProfile -File scripts/Check-Mod.ps1 -TargetPath 'C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/3602926791' -Brief`:
exit 0, all four checks passed with no warnings. Also parsed the delivered About XML,
asserted the required packageId and final source-link match, and checked whitespace
with `git diff --check`. All passed on the current working tree based on that commit.

The dependency documentation defect is resolved. With the earlier independent
settings/localization validations and written scenarios retained, and automated/XML
checks rerun successfully, the cumulative stage advances from `l10n` through
`preTest` to `done`. This means ready for final in-game validation, not `tested`.
The remaining game scenarios and unsupported testing/save-safety claims remain
explicitly unverified; `tested_on` stays empty. No game run or push was performed.
This follow-up changes README.md, Mod/About/About.xml and STATUS.md and is not yet
committed. Historical audit entries above describe their original snapshots.
