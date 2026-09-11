# Test scenarios

One patch file, 21 textures, no assembly, no def of its own. There is very little here to break —
and everything that can break, breaks **silently**. That is the whole reason this mod needs the
game rather than a checker.

**The absence of errors in the log is not a pass.** The failure this port exists to fix writes
nothing at all: `PatchOperationFindMod` matches on a mod's display **name**, and a guard that
matches nothing skips its `match` branch, returns true, and logs no line. The mod installs, loads,
sits in the list looking healthy, and produces brown dodos forever. Only birds on screen settle it.

## Load order

```
Mlie.ReGrowthExtinctAnimals     ReGrowth: Extinct Animals (Continued)   3602926791   the target
nelim.colorfulcoats.dodosrenew  this mod                                             after it
```

The target is **not** declared as a dependency, and deliberately so: the patch is guarded, so the
mod is harmless without it. `<loadAfter>` names the three identifiers the pack has shipped under.

`purpleyam.colorfulcoats.hlxdodo` — the original — is named in `<incompatibleWith>` and must stay
off.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `Could not load UnityEngine.Texture2D` | `ContentFinder<Texture2D>.Get` | A `texPath` with nothing behind it. The line names the path, so it says which of `ExtinctDodoA`–`G` is missing a rotation. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | The same fault one level up: no rotation at all found for a coat. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Expected count from this mod: **zero**, and zero is not informative. Both `PatchOperationAdd`s carry `<success>Always</success>`, and an unmatched `PatchOperationFindMod` was never a failure in the first place. |
| `Adding duplicate` | `DefDatabase.Add` | purpleyam's original is enabled alongside this port. `<incompatibleWith>` should make that impossible. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | Only two `Class=` values are used here, both `Verse` patch operations. This would mean 1.6 renamed one of them. |

Lines naming other mods are not ours to fix, and are worth leaving in whatever gets pasted back.

---

## A — the guard matches at all

The one scenario that matters. Everything else assumes this one passed.

- Dev mode on, spawn **20** dodos with the debug spawn-pawn action, `RG_Dodo`.
- Expect roughly **16 coloured, 4 brown**. Each bird rolls the coats at `0.8`.
- **All 20 brown means the guard missed**, not bad luck: at `0.8` a clean sweep of brown is about
  one run in a hundred thousand billion (`0.2^20`).
- If they are all brown, read the `<name>` in the Extinct Animals pack's own `About.xml` as it
  stands today, and compare it against the four names in `Patches/ColorfulCoats_HlxDodo.xml`. A
  fifth republication is the expected cause, and the fix is to add the name, never to replace the
  others.

## B — the seven coats and the three rotations

21 textures: seven coats, three rotations each. West is not shipped; RimWorld mirrors `_east` when
no `_west` exists, so a west-facing dodo showing its far side reversed is correct.

- Spawn around 40 and look for all seven coats. They are meant to be plainly different birds, not
  seven shades of one.
- Watch a few walk in each direction, and check the north view in particular: it is the one that
  hides the beak, so a wrong file there is easy to miss.
- Any missing file shows up in the log as `Could not load UnityEngine.Texture2D` with the path.

## C — the coat is per-animal and survives a reload

`Verse.Pawn.overrideGraphicIndex`, a `Nullable<int>`, is what records which entry of
`alternateGraphics` a pawn drew, and it goes into the save under that same name. Verified by
reflection against 1.6's `Assembly-CSharp.dll`, and the label is present in the assembly's string
heap.

- Save with several coloured dodos in view, quit to the menu, load again.
- Each bird keeps **its own** coat. A coat that jumps to a different animal means the index is
  being re-rolled rather than read back, which would also mean every reload reshuffles the pen.

## D — added to a save in progress

The README says this is safe. What "safe" means here is worth pinning down, because the index is
stored per animal: a dodo generated before the mod was added has **no** index, and no index means
the coat it hatched with.

- Add the mod to a running colony that already has dodos.
- Expect the dodos already in the save to stay exactly as they were, and **new** ones — spawned,
  hatched, or arriving with a caravan — to draw from the seven.
- If the birds already in the pen change colour on load, that is still not a fault, but it
  contradicts what was just written above and is worth reporting.

## E — removed from a save in progress

The other half of the same claim, and the half that cannot be checked offline. Saved indices now
point into a list the def no longer has.

- Remove the mod, load the same save.
- The dodos go back to brown, and nothing in the log names `overrideGraphicIndex`,
  `alternateGraphic`, or `RG_Dodo`.

## F — two Extinct Animals releases enabled at once

The three `RG_Dodo` names sit in a single `<mods>` block for this reason:
`PatchOperationFindMod` stops at the first name it finds, so one block cannot apply the coats
twice. Two blocks could, and did, leaving the def with two `alternateGraphics` lists.

- Enable the Continued release together with ReGrowth 2 or the Remastered pack, whichever is
  installed.
- The coats still appear, and the log stays as clean as in scenario A. Nothing on screen
  distinguishes one list from two, so this scenario is really about the log and about the coats
  not vanishing.

## G — the mod alone, with no Extinct Animals at all

- Enable this mod with the pack switched off entirely.
- It must load, do nothing, and say nothing. That is the intended behaviour of a guarded patch and
  the reason this mod declares no dependency.

## H — the mod list entry itself

- The name reads `Colorful Coats - Dodos! Renew`.
- The icon is drawn at about 32 px there. The mascot's face should be readable at that size; it is
  the reason the icon is a tighter crop of its source than the full render under `Art/`.
- The Workshop banner is `About/Preview.png`, 896x504, and says `Renew` rather than `1.6`.

## What cannot be tested on 1.6

The first operation in the patch targets `RG-EAP_Dodo`, the defName Helixien's original pack used.
That pack declares nothing past its own era and will not load here. The operation is kept for
players on older games, and its silence on 1.6 is expected rather than a fault.
