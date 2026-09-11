# Changelog

All notable changes to this mod are documented here.

## [1.0.0] — 2026-09-05

First release. Port of purpleyam's **Colorful Coats - Dodos!** to RimWorld 1.6.

### Fixed

- `PatchOperationFindMod`: `ReGrowth: Extinct Animals (Continued)` added to the `<mods>` list of
  the operation that patches `RG_Dodo`. The operation matches on a mod's **display name**, not on
  its `packageId` — `Verse.ModLister.HasActiveModWithName(string)` — and purpleyam's three names
  were all superseded when Mlie republished the pack under a fourth. An unmatched
  `PatchOperationFindMod` is not an error: the `match` branch is skipped, the operation returns
  true, and nothing is logged. The mod would have installed, loaded, thrown nothing, and produced
  brown dodos forever. This was the only thing wrong with it.
  The three old names are kept beside the new one, because a player on an older game still has one
  of them.

### Changed

- The two `PatchOperationFindMod` blocks that patched `RG_Dodo` — one for
  `ReGrowth Remastered: Extinct Animals`, one for `ReGrowth: Extinct Animals` — merged into a
  single block listing all three names. They had the same xpath and the same value, so with both
  mods active the coats were applied twice, leaving the def with two `alternateGraphics` lists.
  `PatchOperationFindMod` stops at the first name it finds, so one block cannot do that.
- `<success>Always</success>` added to both `PatchOperationAdd` operations.
  `PatchOperationSequence` stops at the first operation that returns false rather than skipping
  it, so a future rename would have cost every animal after it its coats. Nothing changes today;
  purpleyam already wrote the Vanilla Animals Expanded mod this way.
- `packageId` changed from `purpleyam.colorfulcoats.hlxdodo` to `nelim.colorfulcoats.hlxdodo`.
- `<supportedVersions>` set to 1.6.
- `<loadAfter>` given `Mlie.ReGrowthExtinctAnimals` alongside the two old identifiers.
- `About/PublishedFileId.txt` dropped: it names purpleyam's Workshop item.

### Removed

- The commented-out draft at the head of `Patches/ColorfulCoats_HlxDodo.xml`. It pointed at
  `Things/Pawn/Animal/ExtinctDodo/…`, a texture folder this mod does not ship. Inert, but the only
  thing in the file that looked like an answer to "where are the textures?" and was wrong.
- `About/colorfuldodos.png`, 1.4 MB. RimWorld reads `Preview.png` and `ModIcon.png` from that
  folder and nothing else; against 0.16 MB of textures, that one screenshot was 90% of the mod.
- `About/Preview.png`, purpleyam's own. The port has its own showcase.

### Unchanged

- The seven coats, the `alternateGraphicChance` of `0.8`, and the 21 textures, byte for byte.
- The `defName`s the patch aims at, `RG-EAP_Dodo` and `RG_Dodo`, which are not this mod's to
  choose.

### Verified

- `Verse.PawnKindDef.alternateGraphics` and `alternateGraphicChance`, and
  `Verse.AlternateGraphic.texPath`, all still exist under those names in 1.6 — checked by
  reflection against `Assembly-CSharp.dll`. An XML element matching no field does not stop the
  game: it logs one line and loads with the field unset.
- `RG_Dodo` is defined in the Continued release as both a `ThingDef` and a `PawnKindDef`, in
  `1.6/Defs/ThingDefs_Races/Races_ReGrowth_Extinct_limited.xml`, which `LoadFolders.xml` loads
  unconditionally. ReGrowth 2 has no dodo of its own, so there is exactly one source for the def.
- All 7 `texPath` values resolve to shipped textures; no shipped texture is unreferenced.
- Neither the Continued release nor ReGrowth 2 already defines `alternateGraphics` on `RG_Dodo`.
