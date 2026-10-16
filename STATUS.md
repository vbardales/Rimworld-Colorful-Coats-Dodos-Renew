---
settings_audit: not_applicable
localization: not_applicable
translation_en: not_applicable
translation_fr: not_applicable
mod:          Colorful Coats - Dodos! Renew (unofficial)
packageId:    nelim.colorfulcoats.dodos
repo:         Rimworld-Colorful-Coats-Dodos-Renew
remote:       https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew.git
local_path:   C:/Users/nelim/Documents/rimworld/ColorfulCoatsDodosRenew
maintainer:   Claude (Sonnet 5), current repository task
visibility:   silent
github_visibility: public
detached:     yes
workflow_stage: playTests[1.0.0]
licence:      silent
licence_port: MIT, port additions only
licence_original: no declared licence found in installed original or live Steam description
visibility_checked: 2026-09-12, original files and live Steam description
licence_at:   LICENSE, Mod/LICENSE, Mod/About/About.xml, ATTRIBUTION.md
upstream_mod_remotes: N/A
title_suffix: (unofficial), already present
github_description: present
dependencies: declared
showcase:     complete
static_checks: passed, 2026-09-13, Check-Mod.ps1 against installed Continued 1.6 target
tested_on:    2026-09-28, Tests/Pickle minimal pass only (29/29); manual scenarios A-H not human-played, D/E not automatable,
              incompatibility pass (F) unwritten
workshop:     3806766249, prepublished 0.1.0 (2026-09-23), item private, not yet tested/public
remaining:
  - unverified: README and About claims of in-game testing and save safety have no recorded execution evidence
  - unverified: in-game scenarios A-H in TESTING.md, no recorded game validation
  - verified: Tests/Pickle minimal pass, request 1193, 2026-09-28 (docs/runs/2026-09-28.txt): 29 of 29 passed, exitReason
    passed. Guard fired, patch attributed, def type asserted (7 alternate graphics, chance 0.8), 21 textures answered by
    this mod, clean load, coats on spawn (B), drawn texture matches the coat index, coat survives reload (C). The
    @review capture (Tests/Pickle/Evidence/2026-09-28-minimal-rerun/screenshots/manual--dodo-coats--step0.jpg, minified 2026-10-02 from the 1920x1080 PNG) was opened: ten dodos, several
    distinct coats, small and dim under a mountain roof - readable but not gallery-quality. First run (b506, 27/29)
    had two test-side failures, both fixed; that evidence pruned, this run's kept. Staged: Dodos acc24a4 + PickleTools
    09f9c0e.
  - unverified: TESTING.md D and E (add/remove mid-save) cannot be automated in this harness (one mod set per launch).
    Since the coat is computed from the bird id and stored nowhere, birds already in a save will change colour when
    the mod is added: "nothing breaks" holds, "existing birds stay as they were" does not (see decision below).
  - verified: incompatibility pass for purpleyam.colorfulcoats.hlxdodo (06-incompat-hlxdodo.feature, wsl-deps.incompat-hlxdodo.map), played 2026-10-02: e03f (3 of 4 green, the fourth fixed) and 53da (1/1, exitReason passed). Observed: the original patches nothing and ships the same 21 PNGs byte for byte; with it loaded this mod still patches RG_Dodo and logs no error. See
    Tests/Pickle/README.md
  - unverified: AUDIT.md 2026-10-02 added three conditions to done -> tested. (1) No @wip scenario: met, none exists.
    (2) Every conditional scenario has run: F incompatibility pass played 2026-10-02, met; the gallery @requires scenarios (07) are pending ticket c05a. No feature carries a
    mod-level @requires; the existing ones name PickleTools companions, all staged in the minimal pass. (3) No manual
    test left to validate: A-C are covered by Pickle; D and E must be played or listed as not applicable with a reason;
    F as above. Decided 2026-10-02 (Virginie): G and H not applicable (engine behaviour), D and E applicable as owner-played
    checks (counts before and after), recorded in TESTING.md.
  - decided 2026-09-28 (Virginie): About and README keep "safe to add to a save in progress and safe to remove": existing birds recolour on adding and revert on removing, which is not a risk to the save. No wording change.
  - defect: none found this pass beyond the above
session:      local_ed9c3e2d-7d1a-4fb8-b837-a905d235ab81 (2026-10-10 audit pass), registered with the Ticket Manager
updated:      2026-10-10, AUDIT.md re-applied at HEAD 5364411: stage field retired, workflow_stage done -> playTests[1.0.0]
              (AUDIT.md section 16 table); ModIcon.png/.ico and the Preview chain regenerated from the changed
              ModIcon-source.png (closing pass 2). See section "Audit 2026-10-10" at the end.
              Earlier: 2026-10-02, AUDIT.md re-applied at HEAD 160ae02 (no stage change, workflow_stage field added,
              session title colorfulcoats.dodos / done): CHANGELOG 0.1.0 entry corrected (the sent tree carried
              packageId dodosrenew), evidence minified (Tests/Pickle/README.md, "Evidence to keep"), upstream
              remote rechecked (still none for purpleyam's Dodos; N/A stands), docs read logged in
              docs/PROTOCOLS-READ.md, no .dds in git or history. Nothing launched.
              Earlier: 2026-09-28, audit re-applied at HEAD 5a41762: DDS caches purged from Mod/ and
              gitignored, 0.1.0 pre-publication (workshop item 3806766249) committed with its
              CHANGELOG entry, doc-read log started at docs/PROTOCOLS-READ.md; stage retained
              at done, tested still unreached
protocols_read_sha: 99bba7dc90ed7f3ae7d65943291502340e234398
code_review_sha: 82feeb3b56e00c1d9a054fbbf06f5a93c05c95f6
---

# Colorful Coats - Dodos! Renew: status

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

Historical stage was `done`. The 2026-09-13 audit and attribution correction below supersede that decision.
Game validation is recorded separately in `tested_on` and the relevant `remaining` entries;
Its absence does not block the `done` stage.
The tracking fields use these conventions:

- **`stage`**, the exact state name from the user's cumulative workflow; see the
  sequence and interpretation in the latest audit below.
- **`tested_on`**, the date of the last run in game. Empty means never.
- **`dependencies`**, `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.
- **`remaining`**, what is left, in three kinds: `feature` for something missing from a first
  release, `defect` for a known fault left unfixed, `unverified` for what could not be checked.
  The line already there is true of nearly the whole repository; replace it once it stops being.

`visibility` records the mod's provenance and permission category: `original` for original work,
`open` for an explicit upstream licence, `silent` for no declared upstream licence,
and `forbidden` for an explicit refusal. Here it is `silent`, because the original material
has no declared licence according to the repository attribution. The MIT licence for the port
additions does not change that category. `licence` retains the same classification for compatibility.
`github_visibility` separately records whether the GitHub repository is public or private.

## Visibility recheck: 2026-09-12

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

## Earlier journal

Dated sections from 2026-09-12 to 2026-10-11 (preview overlay, translation audit, technical validation, cumulative audit, attribution and dependency corrections, 2026-09-28 re-audit, preview migration, 2026-10-10 audit, gallery runs, CI template refresh) are in `docs/runs/status-journal-2026-10-16.md`. Facts that still hold: settings and l10n `not_applicable` (patch hash `3229f81d3345`), no owned strings, Check-Mod.ps1 passes, ModIcon and Preview regenerated 2026-10-10, ModIcon.png 35 KB accepted.

## Removal check E played by Pickle (2026-10-11)

`08-removal.feature` (E1 save with the mod, E2 load without it) passed, ticket 162e, evidence `Tests/Pickle/Evidence/2026-10-11-removal`. TESTING.md E now describes it. Case D still open: no step counts dodos that already exist on the map (question to NPT pending in the Ticket Manager relay).

## Audit replay 2026-10-16

AUDIT.md (protocols HEAD 005d9b2) replayed from `setupRepo` to `playTests`: transitions up to `writeTests` hold, `workflow_stage: playTests[1.0.0]` stands, `protocols_read_sha` current. `Check-Status.ps1 -Strict`: 0 error, 1 warning (`visibility: silent`, documented category). `Check-Mod.ps1`: four checks pass. 8.m holds: no commit under `Mod/` since `code_review_sha`. Evidence pruned (2 superseded folders, 83 MB).

Open in `playTests`:
- 8.c / 8.f: gallery 07 passes (gallery9, 2026-10-14, 1/1) but the capture was read and refused: dodos are about 40 px, coats not readable, wide bare ground. Needs a much tighter crop on the five birds. Nothing candidate in `Art/Gallery/`.
- 8.g / 8.k: case D (add mid-save) still has no step counting existing dodos (question to NPT pending).
- 8.l: `docs/runs/` holds only the 2026-09-28 line; the gallery and removal runs of 2026-10-10 to 14 need their one line each.
- `tested_1_7`: not yet set; the 1.7 pass starts after the green 1.6 `playTests`.
- `scripts/Check-Mod.ps1` row in `LOCAL_SCRIPTS.md` awaits Virginie's validation.
- STATUS.md is 40 KB (WARN): fold the dated sections above into `docs/runs/` when the next commit is made.

## Gallery 07 recapture queued 2026-10-16

`07-gallery.feature` rewritten at `7b19f76` (Nelim styled: LongOily hair rgb 120,50,30, mustard BasicShirt, own face; framing by `I frame the area centred on` at root size 7 and 4.5). Ticket `20261016-175636-716-04c2` (galerie map, evidence `Tests/Pickle/Evidence/2026-10-16-gallery10`) in the queue: on `RUN_DONE`, open both captures and give the verdict (GALLERY.md), add one line to `docs/runs/`. The new hair, colour and shirt steps are unplayed; an undefined step is a test-side fix. Subtitles stay in `PUBLICATION.md` ("Gallery subtitles"), to be burned in with `Add-Subtitle.ps1` after acceptance. TM registered CCD, no pending message.
