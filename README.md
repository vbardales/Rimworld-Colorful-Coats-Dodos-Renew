# Colorful Coats - Dodos! 1.6

Port of **purpleyam's Colorful Coats - Dodos!** to RimWorld 1.6.

**I am not the author of this mod.** The coats and the whole idea are purpleyam's — all I did was
make it find its target again. Credit goes to them; mistakes in the port are mine.

Original mod: https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651 — declares 1.4 and
nothing further. The page is still online; the mod is abandoned, not withdrawn.

## What the mod does

Seven extra coats for the dodo of ReGrowth's Extinct Animals, instead of the one it hatches with.
Eight birds in ten get one. One patch file, 21 textures, no `Defs`, no assembly, no Harmony, no
DLC.

Safe to add to a save in progress and safe to remove from one: it changes how a bird is drawn,
nothing else.

## What it needs

Whichever release of Helixien's Extinct Animals you run. The one that works on 1.6:

**ReGrowth: Extinct Animals (Continued)**, by Mlie —
https://steamcommunity.com/sharedfiles/filedetails/?id=3602926791

The three older releases are still recognised for anyone on an older game.

## What was broken, and why it would have been silent

The patch is guarded by `PatchOperationFindMod`, which matches on a mod's **display name**, not
on its `packageId`:

```csharp
Verse.ModLister.HasActiveModWithName(string name)   // what the operation calls
```

purpleyam listed the three names the Extinct Animals pack had gone by. Mlie has since republished
it as **`ReGrowth: Extinct Animals (Continued)`** — a fourth name, matching none of the three.

An unmatched `PatchOperationFindMod` **is not a failure**. No match means the `match` branch is
skipped and the operation returns true. No log line, no warning, nothing on screen. The mod would
have installed, loaded, sat in the mod list looking fine, and produced brown dodos forever.

That is the failure mode worth naming, because it does not look like a failure.

The fix is one line: the new name joins the `<mods>` list of the operation that patches
`RG_Dodo`. The old names stay beside it — `PatchOperationFindMod` takes as many as you give it,
and a player on an older game still has one of them.

## What else changed

Nothing a dodo can see.

- The two operations that patch the same `defName` were merged into one, so two of those releases
  being active at once can no longer apply the coats twice.
- Each operation reports success whether or not it found its target, so a future rename cannot
  cost a later animal its coats. (`PatchOperationSequence` stops at the first operation that
  fails; it does not skip and carry on.)
- A commented-out draft pointing at a texture folder this mod does not ship was deleted.

The colours, the `0.8` chance and the 21 textures are untouched.

## Layout

```
Mod/          published — the junction into RimWorld/Mods points here
  About/
  Patches/
  Textures/
```

Everything outside `Mod/` — this file, the changelog, the attribution — stays out of the Steam
upload by construction. `SteamUGC.SetItemContent` takes the junction's target directory as it
stands on disk, with no filtering.

## Credit and removal

purpleyam declared no licence, checked at all four places one could be: no `LICENSE` file, nothing
in `About.xml`, no linked repository, and nothing in the body of the Steam description. Republished
under the usual convention for abandoned mods — full credit, a link to the original, removal on
request. If purpleyam would rather this did not exist, say so and it comes down.

See [ATTRIBUTION.md](ATTRIBUTION.md) for what was taken and what was changed, [LICENSE](LICENSE)
for what the MIT grant does and does not cover, and [CHANGELOG.md](CHANGELOG.md).

The port work was done with the help of an AI assistant (Claude, by Anthropic), under human
direction and in-game testing.
