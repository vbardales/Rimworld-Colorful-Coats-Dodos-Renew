# Test scenarios

One patch file, 21 textures, no assembly, no own def. Little to break.
What breaks, breaks **silently**. Why mod needs game, not checker.

**No log errors ≠ pass.** Failure this port fixes writes nothing: `PatchOperationFindMod` matches mod display **name**; guard matching nothing skips `match` branch, returns true, logs nothing. Mod installs, loads, looks healthy in list, makes brown dodos forever. Only birds on screen settle it.

## What a script settles first

Four items below = files, not birds. Readable without game:

```bash
pwsh -File scripts/Check-Mod.ps1
```

Checks against installed Extinct Animals here: each operation's xpath finds its `PawnKindDef`; `<name>` pack displays **today** in `<mods>` of patching operation; every `texPath` has rotations on disk, no unreferenced PNG in `Textures/`; `<name>`, `<packageId>`, folder name agree. Suffixes `(unofficial)` and `(prohibited)` ignored only for folder compare. `-Brief` prints failures only; exit 1 on any failure.

Name compare case-sensitive like `HasActiveModWithName`: disassembled from 1.6 `Assembly-CSharp.dll`, body `ModMetaData.Name == name`, `String::op_Equality`, no `ToLower`, no `StringComparison`. Guard reading `Extinct animals` unreachable as wholly different name; script fails it.

**Clean run = first half of scenario A, not answer.** Script confirms guard names installed pack and def where xpath looks, yet twenty brown dodos still possible: coats reaching screen settled below, in game.

## Load order

```
Mlie.ReGrowthExtinctAnimals  ReGrowth: Extinct Animals (Continued)   3602926791   the target
nelim.colorfulcoats.dodos    this mod                                             after it
```

Continued target declared in `modDependencies` for 1.6 mod. `<loadAfter>` names three identifiers pack shipped under. Required target missing → mod list reports missing dependency; guarded XML inert.

`purpleyam.colorfulcoats.hlxdodo`, original, in `<incompatibleWith>`, must stay off.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `Could not load UnityEngine.Texture2D` | `ContentFinder<Texture2D>.Get` | `texPath` with nothing behind. Line names path → which of `ExtinctDodoA`–`G` missing rotation. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | Same fault one level up: no rotation found for coat. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Expected **zero**, and zero uninformative. Both `PatchOperationAdd`s carry `<success>Always</success>`; unmatched `PatchOperationFindMod` never failure anyway. |
| `Adding duplicate` | `DefDatabase.Add` | purpleyam original enabled with port. `<incompatibleWith>` should prevent. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | Only two `Class=` values, both `Verse` patch ops. Means 1.6 renamed one. |

Lines naming other mods not ours to fix; leave them in whatever pasted back.

---

## A: the guard matches at all

Only scenario that matters. Rest assume it passed.

- Dev mode on, spawn **20** dodos via debug spawn-pawn, `RG_Dodo`.
- Expect ~**16 coloured, 4 brown**. Each bird rolls coat at `0.8`.
- **All 20 brown = guard missed**, not bad luck: all-brown at `0.8` ≈ one in hundred thousand billion (`0.2^20`).
- If all brown, read `<name>` in Extinct Animals' own `About.xml` today, compare with four names in `Patches/ColorfulCoats_HlxDodo.xml`. Likely cause: fifth republication; fix = add name, never replace others.

## B: the seven coats and the three rotations

21 textures: seven coats × three rotations. No west; RimWorld mirrors `_east` when no `_west`, so west-facing dodo with far side reversed correct.

- Spawn ~40, find all seven coats. Should be plainly different birds, not seven shades.
- Watch few walk each direction; check north especially: hides beak, wrong file easy to miss.
- Missing file logs `Could not load UnityEngine.Texture2D` with path.

## C: the coat is per-animal and survives a reload

Corrected 2026-09-28. Used to say `Pawn.overrideGraphicIndex` records coat, saved. Wrong: declared on `Thing`, renderer never reads it, null for ordinary animal. Coat computed each draw by `PawnGraphicUtils.TryGetAlternate` from pawn's `thingIDNumber` and kind's `alternateGraphicChance`; `PawnGraphicUtils.GetGraphicIndex(pawn)` returns it, `-1` for original graphic. Decompiled from 1.6 `Assembly-CSharp.dll` by Megafauna session, not established here.

- Save with several coloured dodos visible, quit to menu, reload.
- Each bird keeps **own** coat. Nothing saved; holds while bird id and `alternateGraphics` list unchanged. Coat moving to other bird = ids reassigned.

## D: added to a save in progress

**Not applicable** (Virginie, 2026-11-06, always the rule): testing mod addable to save in progress = testing Pickle test works, since loading save with mod active is Pickle's principle. No owner-played check, no scenario, no fixture. `09-addition.feature` (2026-10-12) needed fixture no normal pass can make; failed run 4aa1 ("Fixture 'dodos-without-mod' not found"), removed. 2026-10-02 owner-played decision withdrawn.

Rewritten 2026-09-28. Coat computed from id, not stored, so dodo generated before mod **not** protected by lacking stored index: first load with mod draws coat like any, chance 0.8.

- Add mod to running colony with dodos.
- Expect ~8 in 10 existing birds change colour on load; new ones draw from seven too. Changing bird = mod working, not fault.
- README "safe to add to a save in progress" true (nothing breaks), but "existing birds stay as they were" false, don't claim.

## E: removed from a save in progress

**Applicable, played by Pickle** (2026-10-11; Virginie, 2026-10-12: playing test = playing its base scenario).
`Tests/Pickle/Mod/Pickle/Features/08-removal-write.feature` and `Tests/Pickle/Removal/Mod/Pickle/Features/removal-check.feature`, one request, two launches: E1 saves colony with
20 coloured dodos (≥3 coats), hands to test mod; E2 loads with `nelim.colorfulcoats.dodos` removed
from mod list, asserts no dodo has coat, no error logged. Current revision (v1.0.0, cbf6f95): ticket c000, 2026-11-17, both
passed (`Tests/Pickle/Evidence/noreg-removal`, `Docs/runs/2026-11-17-noreg-removal.txt`; `-ThenWithout` must be an array of the two ids, a comma string loads nothing). Brown
look on map not asserted, only coat absence.

Nothing saved, so removal leaves nothing pointing into list def no longer has.

- Remove mod, load same save.
- Dodos back to brown, no log line names `alternateGraphic` or `RG_Dodo`.

## F: two Extinct Animals releases enabled at once

Three `RG_Dodo` names in single `<mods>` block for this:
`PatchOperationFindMod` stops at first name found, so one block can't apply coats
twice. Two blocks could, and did → def with two `alternateGraphics` lists.

- Enable Continued with ReGrowth 2 or Remastered, whichever installed.
- Coats still appear, log clean as scenario A. Screen can't tell one list from two;
  scenario really about log and coats not vanishing.

## G: the mod alone, with no Extinct Animals at all

**Not applicable** (Virginie, 2026-10-02): game's handling of missing hard dependency is
game behaviour, not mod's (AUDIT.md, "On ne teste pas le jeu"). Mod answers for what it
declares; `About.xml` declares dependency. Text below = original intent only.

- Enable mod with pack fully off.
- Mod list must report missing Continued dependency. If load forced for
  diagnosis, guarded patch stays inert, no patch failure.

## H: the mod list entry itself

**Not applicable** (Virginie, 2026-10-02): game draws mod list entry. Name, icon, Preview are
files, checked offline (`Check-Mod.ps1`, size and dimensions).

- Name reads `Colorful Coats - Dodos! Renew (unofficial)`.
- Icon drawn ~32 px. Mascot face readable at that size; why
  icon is tighter crop than full render under `Art/`.
- Workshop banner `About/Preview.png`, 896x504, says `Renew` not `1.6`.

## What cannot be tested on 1.6

First patch operation targets `RG-EAP_Dodo`, defName of Helixien's original pack.
Pack declares nothing past own era, won't load here. Operation kept for
older-game players; silence on 1.6 expected, not fault.