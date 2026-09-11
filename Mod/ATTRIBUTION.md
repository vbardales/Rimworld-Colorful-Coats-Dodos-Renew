# Colorful Coats - Dodos! — attribution

A 1.6 port of **Colorful Coats - Dodos!**, by **purpleyam**
([2388053651](https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651)).

## Status: public

The source mod is **dead** — it declares 1.4 and nothing further — and **no licence is declared
anywhere**, checked at the four places one could be: no `LICENSE` file in the mod, no mention in
its `About.xml`, no linked repository (`<url>` is absent entirely), and nothing in the body of
the description on its Steam page. That last check is the one that matters: it is the one that
was skipped once on たたら製鉄, whose ban on redistribution turned out to be a sentence in its
description and nowhere else.

This is the usual convention for ports on the RimWorld Workshop: republished with **credit by
name** and **removal on request, without argument**. The `<author>` field reads
`purpleyam - 1.6 port: nelim`, and the removal clause is in the description.

purpleyam published four mods under the *Colorful Coats* name. Three are ported, each in its own
repository; the fourth is not, for the reason given at the end of this file.

## What was carried over

Everything the mod contained, which is one patch file and 21 textures. There is no `Defs`
folder, no assembly and no C# — the mod does one thing and does it in XML.

| | |
|---|---|
| `Patches/ColorfulCoats_HlxDodo.xml` | rewritten, see below |
| `Textures/Things/Pawn/Animal/ReGrowth/Dodo/ExtinctDodo{A..G}_{north,south,east}.png` | purpleyam's, byte for byte |

The seven coats and the `alternateGraphicChance` of 0.8 are purpleyam's, unchanged.

`About/Preview.png` was **not** carried over; the port has its own. purpleyam's four extra
screenshots in `About/` were dropped: RimWorld reads `Preview.png` and `ModIcon.png` from that
folder and nothing else, and `colorfuldodos.png` alone was 1.4 MB against 0.16 MB of textures.

## What the mod does

`PawnKindDef` carries two fields the game has had for a long time and still has in 1.6, checked
by reflection against `Assembly-CSharp.dll`:

```
Verse.PawnKindDef.alternateGraphics      List<Verse.AlternateGraphic>
Verse.PawnKindDef.alternateGraphicChance float
Verse.AlternateGraphic.texPath           string
```

A `PatchOperationAdd` puts both onto the dodo's `PawnKindDef`, and the game then rolls a coat
for each bird as it is generated. That is the entire mod.

## The one thing that was broken

The patch is guarded by `PatchOperationFindMod`. That operation matches on a mod's **display
name**, not on its `packageId` — `Verse.ModLister.HasActiveModWithName(string)`, which is what
the operation calls, takes a name and compares it to the names of the active mods.

purpleyam listed the three names the Extinct Animals pack had gone by:

- `ReGrowth: Extinct Animals Pack` → patches `RG-EAP_Dodo`
- `ReGrowth Remastered: Extinct Animals` → patches `RG_Dodo`
- `ReGrowth: Extinct Animals` → patches `RG_Dodo`

Mlie has since picked the mod up and republished it, and the 1.6 release is called
**`ReGrowth: Extinct Animals (Continued)`** (`Mlie.ReGrowthExtinctAnimals`,
[3602926791](https://steamcommunity.com/sharedfiles/filedetails/?id=3602926791)). That is a
fourth name, and it matches none of the three.

**An unmatched `PatchOperationFindMod` is not a failure.** No match means the `match` branch is
skipped and the operation returns true — no log line, no warning, nothing on screen. The mod
would have installed, loaded, and produced brown dodos forever, with no way for a player to tell
that anything was wrong.

The fix is one line: the new name is added to the `<mods>` list of the operation that patches
`RG_Dodo`. The old names are **kept beside it** rather than replaced, because a player on an
older game still has one of them, and `PatchOperationFindMod` takes as many names as you give it.

`RG_Dodo` is still the right `defName` in the Continued release: it is defined in
`1.6/Defs/ThingDefs_Races/Races_ReGrowth_Extinct_limited.xml`, as both a `ThingDef` and a
`PawnKindDef`, in the folder that `LoadFolders.xml` loads unconditionally. ReGrowth 2
(`ReGrowth.BOTR.Core`) has no dodo of its own, so there is exactly one source for that def.

## What else changed, and why

None of this was broken. All three are the same kind of hardening.

**The two `RG_Dodo` operations were merged into one.** They were separate `PatchOperationFindMod`
blocks with the same xpath and the same value, one per mod name. If two of those releases were
active at once, both would fire, and the def would end up with two `alternateGraphics` lists and
two `alternateGraphicChance` values. Listing the three names in a single `<mods>` block makes
that impossible: `PatchOperationFindMod` stops at the first name it finds.

**Each operation now carries `<success>Always</success>`.** They sit inside a
`PatchOperationSequence`, which stops at the first operation that returns false. With one
operation per branch this changes nothing today; it means a future rename cannot cost a later
animal its coats. purpleyam wrote the Vanilla Animals Expanded mod this way already.

**A commented-out draft was deleted.** The head of the file held an earlier version of the patch,
inside `<!-- -->`, pointing at `Things/Pawn/Animal/ExtinctDodo/…` — a texture folder this mod does
not ship. It was inert, but it was also the only thing in the file that looked like an answer to
"where are the textures?" and was wrong.

## What was checked and found sound

- Both `PawnKindDef` fields still exist under those names in 1.6 (reflection, above). This is the
  failure mode that kills ported XML quietly: RimWorld does not stop for an element that matches
  no field, it logs one line and loads with the field unset.
- All 7 `texPath` values resolve to textures the mod ships, and no shipped texture is unreferenced.
- Neither the Continued release nor ReGrowth 2 defines `alternateGraphics` on `RG_Dodo` already,
  so the patch is not fighting anything.

## The fourth Colorful Coats mod is not ported

**Colorful Coats - Cats and Dogs!**
([2388932599](https://steamcommunity.com/sharedfiles/filedetails/?id=2388932599)) has nothing
left to port: its 14 patched `PawnKindDef`s, their coat chances and its 78 textures are all
already inside **Colorful Coats - Vanilla Animals Expanded!**, identical — the textures match
byte for byte, only the folder names differ. It existed because *Vanilla Animals Expanded — Cats
and Dogs* used to be a module of its own; Vanilla Animals Expanded has since absorbed it, and
purpleyam had already folded the cats and dogs into the Vanilla Animals Expanded patch by then.
Its own target, `VanillaExpanded.VAECD`, stops at 1.3.

## Thanks

- **purpleyam**, for the coats.
- **Helixien**, for the dodo, and **Mlie**, for keeping it running.
