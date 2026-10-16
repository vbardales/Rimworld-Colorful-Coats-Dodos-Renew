# Test scenarios

One patch file, 21 textures, no assembly, no def of own. Little here to break.
Everything that can break, breaks **silently**. Whole reason mod needs game, not checker.

**No errors in log ≠ pass.** Failure this port fixes writes nothing: `PatchOperationFindMod` matches mod display **name**; guard matching nothing skips `match` branch, returns true, logs no line. Mod installs, loads, sits in list looking healthy, produces brown dodos forever. Only birds on screen settle it.

## What a script settles first

Four items below concern files, not birds. Files readable without starting game:

```bash
pwsh -File scripts/Check-Mod.ps1
```

Answers, against installed copy of Extinct Animals on this machine: does each operation's xpath find its `PawnKindDef`; is `<name>` pack displays **today** in `<mods>` of operation patching it; does every `texPath` have rotations on disk, no PNG in `Textures/` unreferenced; do `<name>`, `<packageId>`, folder name agree. Publication suffixes `(unofficial)` and `(prohibited)` ignored only for folder comparison. `-Brief` prints only failures; exit code 1 on any failure.

Name comparison case-sensitive, as `HasActiveModWithName` is: disassembled against 1.6 `Assembly-CSharp.dll`, body is `ModMetaData.Name == name`, `String::op_Equality`, no `ToLower`, no `StringComparison`. Guard reading `Extinct animals` as unreachable as guard with different name entirely; script fails on it.

**Clean run = scenario A's first half, not its answer.** Script confirms guard names installed pack and def sits where xpath looks, yet still may describe twenty brown dodos: whether coats reach screen settled below, in game.

## Load order

```
Mlie.ReGrowthExtinctAnimals  ReGrowth: Extinct Animals (Continued)   3602926791   the target
nelim.colorfulcoats.dodos    this mod                                             after it
```

Continued target explicitly declared in `modDependencies` for delivered 1.6 mod. `<loadAfter>` names three identifiers pack shipped under. Without required target, mod list should report missing dependency; guarded XML stays inert.

`purpleyam.colorfulcoats.hlxdodo`, the original, named in `<incompatibleWith>`, must stay off.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `Could not load UnityEngine.Texture2D` | `ContentFinder<Texture2D>.Get` | `texPath` with nothing behind it. Line names path, so says which of `ExtinctDodoA`–`G` missing a rotation. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | Same fault one level up: no rotation at all found for coat. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Expected count from this mod: **zero**, and zero not informative. Both `PatchOperationAdd`s carry `<success>Always</success>`; unmatched `PatchOperationFindMod` never a failure anyway. |
| `Adding duplicate` | `DefDatabase.Add` | purpleyam's original enabled alongside this port. `<incompatibleWith>` should make impossible. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | Only two `Class=` values used, both `Verse` patch operations. Would mean 1.6 renamed one. |

Lines naming other mods not ours to fix; worth leaving in whatever gets pasted back.

---

## A: the guard matches at all

Only scenario that matters. Everything else assumes this one passed.

- Dev mode on, spawn **20** dodos with debug spawn-pawn action, `RG_Dodo`.
- Expect roughly **16 coloured, 4 brown**. Each bird rolls coats at `0.8`.
- **All 20 brown = guard missed**, not bad luck: at `0.8`, clean sweep of brown about one run in a hundred thousand billion (`0.2^20`).
- If all brown, read `<name>` in Extinct Animals pack's own `About.xml` as it stands today, compare against four names in `Patches/ColorfulCoats_HlxDodo.xml`. Fifth republication expected cause; fix is add the name, never replace the others.

## B: the seven coats and the three rotations

21 textures: seven coats, three rotations each. West not shipped; RimWorld mirrors `_east` when no `_west` exists, so west-facing dodo showing far side reversed is correct.

- Spawn around 40, look for all seven coats. Meant to be plainly different birds, not seven shades of one.
- Watch a few walk each direction; check north view especially: hides the beak, so wrong file easy to miss.
- Any missing file shows in log as `Could not load UnityEngine.Texture2D` with path.

## C: the coat is per-animal and survives a reload

Corrected 2026-09-28. Section used to say `Pawn.overrideGraphicIndex` records coat and goes into save. Wrong: declared on `Thing`, nothing in renderer reads it, stays null for ordinary animal. Coat computed each time bird drawn, by `PawnGraphicUtils.TryGetAlternate`, from pawn's `thingIDNumber` and kind's `alternateGraphicChance`; `PawnGraphicUtils.GetGraphicIndex(pawn)` returns it, `-1` for original graphic. Decompiled from 1.6 `Assembly-CSharp.dll` by Megafauna session, not established here.

- Save with several coloured dodos in view, quit to menu, load again.
- Each bird keeps **its own** coat. Nothing saved, so holds exactly as long as bird's id and `alternateGraphics` list unchanged. Coat moving to another bird would mean ids reassigned.

## D: added to a save in progress

**Applicable, played by owner** (Virginie, 2026-10-02): not automatable, so user-controlled check. Load save without mod, count coloured dodos (none expected), add mod, load again, count how many changed colour, record both counts here with date. Expected: about 8 in 10 of existing birds.

Rewritten 2026-09-28. Coat computed from id, not stored, so dodo generated before mod added is **not** protected by lacking stored index: on first load with mod it draws coat like any other, chance 0.8.

- Add mod to running colony already having dodos.
- Expect roughly eight in ten existing birds change colour on load, new ones draw from the seven too. Bird that changes = mod working, not fault.
- README's "safe to add to a save in progress" true in that nothing breaks, but not "existing birds stay as they were": that second claim false, should not be made.

## E: removed from a save in progress

**Applicable, played by Pickle** (2026-10-11; Virginie, 2026-10-12: playing a test means playing its base scenario).
`Tests/Pickle/Mod/Pickle/Features/08-removal.feature`, one request, two launches: E1 saves colony holding
20 coloured dodos (at least 3 coats), hands it to test mod; E2 loads it with `nelim.colorfulcoats.dodos` taken
out of mod list, asserts no dodo carries coat and no error logged. Played 2026-10-11, ticket 162e, both
passed (`Tests/Pickle/Evidence/2026-10-11-removal`; active list of second launch holds only test mod). Brown
look on map not asserted, only absence of coats.

Nothing saved, so removing mod leaves nothing pointing into list the def no longer has.

- Remove mod, load same save.
- Dodos go back to brown, nothing in log names `alternateGraphic` or `RG_Dodo`.

## F: two Extinct Animals releases enabled at once

Three `RG_Dodo` names sit in single `<mods>` block for this reason:
`PatchOperationFindMod` stops at first name found, so one block cannot apply coats
twice. Two blocks could, and did, leaving def with two `alternateGraphics` lists.

- Enable Continued release together with ReGrowth 2 or Remastered pack, whichever installed.
- Coats still appear, log stays as clean as scenario A. Nothing on screen
  distinguishes one list from two, so scenario really about log and coats
  not vanishing.

## G: the mod alone, with no Extinct Animals at all

**Not applicable** (Virginie, 2026-10-02): what game does with missing hard dependency is
game's behaviour, not mod's (AUDIT.md, "On ne teste pas le jeu"). Mod answers for what it
declares; `About.xml` declares the dependency. Text below kept as original intent only.

- Enable this mod with pack switched off entirely.
- Mod list must report missing Continued dependency. If loading forced for this
  diagnostic scenario, guarded patch must stay inert, produce no patch failure.

## H: the mod list entry itself

**Not applicable** (Virginie, 2026-10-02): game draws mod list entry. Name, icon, Preview are
files, checked offline (`Check-Mod.ps1`, size and dimensions).

- Name reads `Colorful Coats - Dodos! Renew (unofficial)`.
- Icon drawn at about 32 px there. Mascot's face should be readable at that size; reason
  icon is tighter crop of its source than full render under `Art/`.
- Workshop banner is `About/Preview.png`, 896x504, says `Renew` not `1.6`.

## What cannot be tested on 1.6

First operation in patch targets `RG-EAP_Dodo`, defName Helixien's original pack used.
That pack declares nothing past its own era, will not load here. Operation kept for
players on older games; its silence on 1.6 expected, not fault.