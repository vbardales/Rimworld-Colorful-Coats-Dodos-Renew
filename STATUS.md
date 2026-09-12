---
mod:          Colorful Coats - Dodos! Renew (unofficial)
packageId:    nelim.colorfulcoats.dodosrenew
repo:         Rimworld-Colorful-Coats-Dodos-Renew
remote:       https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew.git
local_path:   C:/Users/nelim/Documents/rimworld/ColorfulCoatsDodosRenew
maintainer:   Codex, current repository task
visibility:   silent
github_visibility: public
detached:     yes
stage:        preTest
licence:      silent
licence_port: MIT, port additions only
licence_original: no declared licence found in installed original or live Steam description
visibility_checked: 2026-09-12, original files and live Steam description
licence_at:   LICENSE, Mod/LICENSE, Mod/About/About.xml, ATTRIBUTION.md
title_suffix: (unofficial), already present
github_description: present
dependencies: to check
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: never seen running
session:      local_1a82a4f4-4e37-4fcb-87b4-1b86d5c52392
updated:      2026-09-12, verified by repository maintainer
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

The existing preTest stage is retained: no in-game validation was performed in this audit.
The tracking fields use these conventions:

- **`stage`** — one of `port`, `showcase`, `preTest`, `done`, `tested`, `published`. Filled in
  from the session group where one exists; confirm it.
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
- Local assets only; nothing published. In-game test status is unchanged.
