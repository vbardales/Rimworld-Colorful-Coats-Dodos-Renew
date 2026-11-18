# Publication

What the Workshop page asks for and the repository holds nowhere else. Drafted 2026-10-02 for the `1.0.0`
(item `3806766249`, created private by the `0.1.0` pre-publication). Read by the next session picking the mod up.
Published 2026-11-17 as 1.0.0; the gallery upload, the comments and the public switch were Virginie's, all done.

## Steam description

Single source, Markdown (`OPERATIONS.md`, "Changing where the Steam description comes from"): the CI derives the
Steam BBCode and the plain-text `<description>` of `About.xml` from this block. No code fence inside.
`About.xml` still holds the hand-written description and is not synced: migrate with the generator's
`--about-from-description` and read the diff before the first CI publish. `SetItemDescription` only ran at
creation, so the Steam page takes this text by hand or by the CI (`update_description`).

`Preview.png` and `ModIcon.png` were made with DALL-E (Virginie, 2026-11-13); the AI-generated paragraph below names it.

```markdown
UNOFFICIAL. This mod is published without the original author's explicit consent.
If the original author contacts me to request its removal, I undertake to take it down promptly.

Seven coats for the dodos of ReGrowth's Extinct Animals, instead of the one they hatch with. Eight dodos out of ten hatch in one of those colours, so a dodo pen stops being a row of identical brown birds. Nothing else changes: same stats, same meat, same eggs.

Texture patch only: a single XML patch and 21 textures. No DLC, no Harmony, no assembly, and no Defs of its own.

## Needs

[ReGrowth: Extinct Animals (Continued)](https://steamcommunity.com/sharedfiles/filedetails/?id=3602926791), by Mlie. Load this mod after it. It is not compatible with the original [Colorful Coats - Dodos!](https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651), which this one replaces on the latest RimWorld version.

## What was broken, and why it would have been silent

The patch is guarded by PatchOperationFindMod, which matches a mod's display name, not its packageId. The original listed the three names the Extinct Animals pack had gone by; since then it was republished under a fourth. An unmatched guard is not an error: no match, nothing happens, no log line. On the latest RimWorld version the original would have loaded cleanly and produced brown dodos forever. The new name is in the list, the old ones stay as historical matching data, and the two patch operations on the same def were merged so two releases active at once cannot apply the coats twice.

## Adding and removing

Nothing is saved: a dodo's coat is worked out each time it is drawn, from its id. Add the mod to a running colony and about eight in ten of the dodos already there change colour; remove it and they go back to brown. Nothing breaks either way.

## Credit and removal

The textures and the whole idea are purpleyam's. They declared no licence, so this is republished under the usual convention for abandoned mods: full credit, a link to the original, removal on request.

## If I go quiet

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other mod of mine, including publishing a continuation of it. All credit must be preserved.

## AI-generated

Code, XML patches, tests and documentation were written with Claude (Anthropic) under my direction and review. The preview image and the mod icon were made with DALL-E (OpenAI).

## Thanks

purpleyam, for the coats; Helixien, for the dodo; Mlie, for keeping it alive. Harmony and the development-only test tools Pickle and RimLogging are never dependencies of this mod.

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
change. Steam shows the first image large: 1-dawn opens the story and sets the place (the pen, the flock in six coats), 3-seven-coats is the most demonstrative of the coats and stays third as the noon episode of one day. `Art/Gallery/0-preview.png` is byte-identical to `Mod/About/Preview.png`.

| # | File | Shows | Status |
|---|---|---|---|
| 0 | `Art/Gallery/0-preview.png` | The Preview itself | in place |
| 1 | `Art/Gallery/1-dawn.jpg` | Dawn at the south gate of the Sanctuary dodo pen: six coats of the flock and a hen in the pen, Nelim at the gate | accepted by Virginie 2026-11-17, subtitled |
| 2 | `Art/Gallery/2-breakfast.jpg` | Mid-morning: five dodos around a pile of hay, Nelim smiling beside it | accepted by Virginie 2026-11-17, subtitled |
| 3 | `Art/Gallery/3-seven-coats.jpg` | Noon: all seven coats in a ring around a pile of berries, plants and lamps round them | accepted by Virginie 2026-11-17, subtitled |
| 4 | `Art/Gallery/4-the-nest.jpg` | Afternoon: a hen on her hay nest, an egg beside her, Nelim and the nesting box | accepted by Virginie 2026-11-17, subtitled |
| 5 | `Art/Gallery/5-golden-hour.jpg` | Golden hour: Nelim and Shogun bring a straggler home, seven dodos with seven coats in the frame | accepted by Virginie 2026-11-17, subtitled |
| 6 | `Art/Gallery/6-roost.jpg` | Dusk: four dodos asleep on hay in the planted ring, Nelim in her hat, lanterns and plants round | accepted by Virginie 2026-11-17, subtitled |

### Gallery subtitles

One line of English written at the bottom of each scene without an interface window, like a film subtitle
(GALLERY.md, "Sous-titres"). The unsubtitled originals live in `Art/Gallery-clean/`, same index and name. `0-` has none.

| Index | File | Line |
|---|---|---|
| 1 | `1-dawn` | The pen wakes up in many colours. |
| 2 | `2-breakfast` | Breakfast is served. |
| 3 | `3-seven-coats` | Seven coats, one flock. |
| 4 | `4-the-nest` | A quiet afternoon, one egg. |
| 5 | `5-golden-hour` | The last bird comes home. |
| 6 | `6-roost` | Everyone is home. |

Thank-you comments and the Use This Instead comment: posted 2026-11-17, texts in `Docs/runs/posted-comments-2026-11-17.md`.

## Steam change notes

The CI reads the block under the `### <version>` heading of the version it uploads. The first line must carry the exact version in BBCode or the dry-run stops.

### 1.1.0

```
[b]1.1.0[/b]
[list]
[*] The mod now declares support for the latest RimWorld version, after a clean run of every check: the coats appear, the original stays incompatible, and a save loads without the mod.
[*] No change to the coats, the textures or the patch.
[/list]
[url=https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew/blob/main/CHANGELOG.md]Full changelog on GitHub[/url]
```

### 1.0.0

```
[b]1.0.0[/b]
[list]
[*] First release: a port of Colorful Coats - Dodos! by purpleyam to the latest RimWorld version.
[*] Seven coats for the dodos of ReGrowth: Extinct Animals (Continued), the same 21 textures and the same 0.8 chance as the original.
[*] The patch guard now matches the pack's current name, so the coats actually appear; the original would have loaded without a sign and left every dodo brown.
[*] The two patch operations on the same def are merged, so the coats cannot be applied twice. Stats, meat and eggs are unchanged.
[/list]
[url=https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew/blob/main/CHANGELOG.md]Full changelog on GitHub[/url]
```

## Collection

For Virginie, who alone adds to [RimWorld through Nelim's eyes](https://steamcommunity.com/sharedfiles/filedetails/?id=3815982565) (AUDIT 13.c), once the item is public:

- The item: [Colorful Coats - Dodos! Renew (unofficial)](https://steamcommunity.com/sharedfiles/filedetails/?id=3806766249).
- Dependencies that are mods of Nelim: none (ReGrowth: Extinct Animals (Continued) is Mlie's and stays out).
- DLC required: none.
- Workshop tags of the item: Mod, 1.6, 1.7 (1.7 added with update_tags at 1.1.0).

## Release path (CI)

Done 2026-11-17: dry-run without `--tags` on `cbf6f953096cefaad863968d308828d991504ad7` (run 44129580982), `publish` of that SHA as `1.0.0` (run 44132008799, approved by Virginie), tags `Mod, 1.6` set and read back, tag `v1.0.0` and its GitHub release created by the CI. The item is still private until Virginie switches it public after the subscription test.
Rollback target: none for a first release; a later fix publishes a higher version from the last good commit. `Rimworld-Release-Admin/docs/OPERATIONS.md` before touching any of it.
