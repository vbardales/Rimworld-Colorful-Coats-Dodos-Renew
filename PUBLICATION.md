# Publication

What the Workshop page asks for and the repository holds nowhere else. Drafted 2026-10-02 for the `1.0.0`
(item `3806766249`, created private by the `0.1.0` pre-publication). Read by the next session picking the mod up.
Nothing here is posted or sent: the gallery, the thank-you comments and the public switch are Virginie's.

## Steam description

The text lives in `Mod/About/About.xml`; `SetItemDescription` only ran at creation, so a correction goes to the
Steam page by hand or by the CI (`update_description`). Before `1.0.0` it still needs, after the body and in this
order: `IF I GO QUIET` (adoption clause verbatim), `AI-GENERATED`, `THANKS`, the line pointing at `ATTRIBUTION.md`
and the licence, and last `[url=https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew]Source code on GitHub[/url]`.
Status: body, removal-on-request, AI and thanks are in `About.xml`; the ATTRIBUTION line and the closing source
link are to check against the Steam page, not assumed.

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
| 1 | `gallery-1-flock` | 14 dodos, at least four coats in one frame: the whole point | not run, not opened |
| 2 | `gallery-2-group` | 7 dodos, each coat readable | not run, not opened |

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
