# Publication

What the Workshop page asks for and the repository holds nowhere else. Drafted 2026-10-02 for the `1.0.0`
(item `3806766249`, created private by the `0.1.0` pre-publication). Read by the next session picking the mod up.
Nothing here is posted or sent: the gallery, the thank-you comments and the public switch are Virginie's.

## Steam description

Single source, Markdown (`OPERATIONS.md`, "Changing where the Steam description comes from"): the CI derives the
Steam BBCode and the plain-text `<description>` of `About.xml` from this block. No code fence inside.
`About.xml` still holds the hand-written description and is not synced: migrate with the generator's
`--about-from-description` and read the diff before the first CI publish. `SetItemDescription` only ran at
creation, so the Steam page takes this text by hand or by the CI (`update_description`).

Not recorded anywhere in the repository: which tool made `Preview.png` and `ModIcon.png`. The AI-generated
paragraph below therefore names only the code and docs; add the image tool before publishing.

```markdown
UNOFFICIAL. This mod is published without the original author's explicit consent.
If the original author contacts me to request its removal, I undertake to take it down promptly.

Seven coats for the dodos of ReGrowth's Extinct Animals, instead of the one they hatch with. Eight birds in ten come out of the egg in a colour of their own, so a dodo pen stops being a row of identical brown birds. Nothing else changes: same stats, same meat, same eggs.

Texture patch only: a single XML patch and 21 textures. No DLC, no Harmony, no assembly, no def of its own.

## Needs

[ReGrowth: Extinct Animals (Continued)](https://steamcommunity.com/sharedfiles/filedetails/?id=3602926791), by Mlie. Load this mod after it. It is not compatible with the original [Colorful Coats - Dodos!](https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651), which this one replaces on 1.6. RimWorld 1.6 only.

## What was broken, and why it would have been silent

The patch is guarded by PatchOperationFindMod, which matches a mod's display name, not its packageId. The original listed the three names the Extinct Animals pack had gone by; since then it was republished under a fourth. An unmatched guard is not an error: no match, nothing happens, no log line. On 1.6 the original would have loaded cleanly and produced brown dodos forever. The new name is in the list, the old ones stay as historical matching data, and the two patch operations on the same def were merged so two releases active at once cannot apply the coats twice.

## Adding and removing

Nothing is saved: a dodo's coat is worked out each time it is drawn, from its id. Add the mod to a running colony and about eight in ten of the dodos already there change colour; remove it and they go back to brown. Nothing breaks either way.

## Credit and removal

The textures and the whole idea are purpleyam's. They declared no licence, so this is republished under the usual convention for abandoned mods: full credit, a link to the original, removal on request.

## If I go quiet

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-generated

Code, XML patches, tests and documentation were written with Claude (Anthropic) under my direction and review.

## Thanks

purpleyam, for the coats; Helixien, for the dodo; Mlie, for keeping it alive. Harmony, and the development-only test tools Pickle and RimLogging, never a dependency of this mod.

Credits, licence scope and the source-by-source assessment are in ATTRIBUTION.md and LICENSE (MIT for the port's additions only).

[Source code on GitHub](https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew)
```

## Dependencies and DLC

- Required, and used by the patch: `Mlie.ReGrowthExtinctAnimals` (ReGrowth: Extinct Animals (Continued), Workshop
  3602926791), declared in `modDependencies` with its Workshop ID. `loadAfter` also names its two older identifiers:
  ordering only, no download forced.
- Declared incompatible: `purpleyam.colorfulcoats.hlxdodo`. Observed 2026-10-02: the original's patch is wholly
  commented out and it ships the same 21 PNGs; the pass `06-incompat-hlxdodo.feature` asserts that.
- DLC: none. No `LoadFolders.xml`, no `IfModActive` branch.

## Adult content boxes

None expected: dodo textures only. Confirm by opening every gallery image before answering the boxes.

## Gallery

Produced by `Tests/Pickle/Mod/Pickle/Features/07-gallery.feature` (`@gallery @review`), reproducible after any
change. Steam shows the first image large. `Art/Gallery/0-preview.png` is byte-identical to `Mod/About/Preview.png`.

| # | File | Shows | Status |
|---|---|---|---|
| 0 | `Art/Gallery/0-preview.png` | The Preview itself | in place |
| 1 | `gallery-1-flock` | 14 dodos in a staged keeper yard at midday (gravel, two torches, a fire, two plant pots), at least four coats in one frame | staged 2026-10-02, not run, not opened |
| 2 | `gallery-2-group` | The same yard, closer, 7 dodos, each coat readable | staged 2026-10-02, not run, not opened |

The only capture so far (`04-coats-on-spawn`, 2026-09-28) was judged small and dim under a mountain roof, not
gallery quality. The gallery scenarios do not fix that: the scene is whatever tile the test colony sits on. If the
first run is still dim, a step that moves the camera to an open, lit cell has to be added to PickleTools. Every image
must be opened and looked at before it goes up; a green scenario proves the path ran, not that the picture shows
anything. Disqualified: dev tools or the Pickle panel visible, another mod's overlay.

## Thank-you comments

Posted after the item is public (a link to a private item opens for nobody), one per recipient, under 1000
characters, BBCode links as `[url=...]name[/url]`, never a bare URL. Voice and true detail are Virginie's: these are
skeletons to rewrite, not text to paste. See `WORKSHOP_COMMENTS.md`, "Writing a comment".

- **purpleyam**, [url=https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651]Colorful Coats - Dodos![/url]:
  seven coats, 0.8 chance, 21 textures are theirs; the port only made the patch find its target again on 1.6
  (the guard matches a display name, and the pack changed names a fourth time). Offer removal on request.
- **Mlie**, [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3602926791]ReGrowth: Extinct Animals (Continued)[/url]:
  thanks for keeping the dodo alive; also credit Helixien, who made the pack the dodo comes from.

Check the recipient rows in `WORKSHOP_COMMENTS.md` first: a row already `posted` takes this mod in its `Covers`
instead of a second comment.

## Steam change notes

For the `1.0.0` upload. The first line must carry the exact version in BBCode or the dry-run stops.

```
[b]1.0.0[/b]
First public release of the 1.6 port. Seven coats for the dodos of ReGrowth: Extinct Animals (Continued), found
again by a patch guard that matched an outdated mod name. No change to stats, meat or eggs.
```

## Release path (CI)

`Mod/About/PublishedFileId.txt` is already committed. `.github/` does not exist yet: generate it with
`scripts/generate-publish-workflow.sh --workshop-id 3806766249 --package-id nelim.colorfulcoats.dodos` (not hand-copied). Dry-run of the exact commit first, `publish` with the full 40-character SHA, `steam-production`
approved by Virginie alone, tag and release created by the CI. Rollback target: chosen before publishing, the last
good commit. `Rimworld-Release-Admin/docs/OPERATIONS.md` before touching any of it.
