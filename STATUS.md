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
protocols_read_sha: d6fb9fab25c8a5f6db73f5603f047ea46fd4f266
code_review_sha: 82feeb3b56e00c1d9a054fbbf06f5a93c05c95f6
publication_changelog_review_sha: 23b42dfe17d3765b34598bb0602dbc99d16817d6
---
# Colorful Coats - Dodos! Renew: status

Read by sweep across every mod, not by asking each thread in turn. Lives at
root, never inside `Mod/`, so Steam never gets it.

Codex now maintains file for this repo, updates as work progresses.
Local Git root is folder above, own `.git` directory, no Git superproject.
Task covers this standalone repo, no longer monorepo.
GitHub CLI confirmed PUBLIC visibility 2026-09-12; origin fetch and push use remote above.

Mod title in `Mod/About/About.xml` already ends `(unofficial)`, matching
unofficial port notice. No extra suffix needed. Description itself includes
`https://github.com/vbardales/Rimworld-Colorful-Coats-Dodos-Renew`; `<url>` field matches.

Both `LICENSE` and `Mod/LICENSE` grant MIT only for port additions: patch changes,
showcase art, packaging, documentation. Explicitly exclude purpleyam's original
coats, chances, 21 textures. Repo records no declared licence for those original
elements; original files and live Steam description independently rechecked 2026-09-12.
`silent` classification kept for original material, not port additions.

Historical stage was `done`. 2026-09-13 audit and attribution correction below supersede that decision.
Game validation recorded separately in `tested_on` and relevant `remaining` entries;
its absence does not block `done` stage.
Tracking fields use these conventions:

- **`stage`**, exact state name from user's cumulative workflow; see
  sequence and interpretation in latest audit below.
- **`tested_on`**, date of last in-game run. Empty means never.
- **`dependencies`**, `declared` when every mod this one needs is named in About's
  `modDependencies`, `to check` when non-vanilla `loadAfter` suggests undeclared dependency,
  `none` when mod needs nothing. Undeclared dependency not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  class it injects belongs to mod not declared and not loaded.
- **`remaining`**, what is left, three kinds: `feature` for something missing from first
  release, `defect` for known fault left unfixed, `unverified` for what could not be checked.
  Line already there true of nearly whole repo; replace once no longer true.

`visibility` records mod's provenance and permission category: `original` for original work,
`open` for explicit upstream licence, `silent` for no declared upstream licence,
`forbidden` for explicit refusal. Here `silent`, because original material
has no declared licence per repo attribution. MIT licence for port
additions does not change category. `licence` keeps same classification for compatibility.
`github_visibility` separately records whether GitHub repo is public or private.

## Visibility recheck: 2026-09-12

`visibility: silent` kept after checking:

- Installed original: `C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/2388053651`.
  File inventory has no licence file. Its `About/About.xml` has no licence, permission
  statement, repo URL; supported versions 1.2, 1.3, 1.4.
  Searches of original XML/text files found no redistribution grant or explicit refusal.
- [Original Steam page](https://steamcommunity.com/sharedfiles/filedetails/?id=2388053651&l=english),
  fetched directly this recheck: description has no licence, redistribution grant,
  explicit refusal, GitHub link. Credits Erin for original texture and purpleyam for
  colour variants. No separate licence for Erin's underlying texture established here.
- Port's MIT grant stays limited to additions. No evidence found warrants changing
  category to `open`, `original` or `forbidden`. Absence of grant not implicit permission.

Expanded Steam audit: all six public Workshop items on purpleyam's profile checked
directly, including descriptions, all 151 comments, all 19 changelog entries, discussion
indexes (zero topics every item). Steam comment counts matched number
of comments retrieved, so not limited to first page.

| Workshop item | ID | Comments checked | Changelog entries |
| --- | --- | ---: | ---: |
| Colorful Coats - Dodos! | 2388053651 | 13 | 4 |
| Scarification for Everyone | 2648112257 | 13 | 2 |
| More Ideological Words | 2643795171 | 59 | 3 |
| Colorful Coats - Megafauna! | 2560113727 | 15 | 2 |
| Colorful Coats - Vanilla Animals Expanded! | 2398446130 | 31 | 5 |
| Colorful Coats - Cats and Dogs! | 2388932599 | 20 | 3 |

Also checked public [author profile](https://steamcommunity.com/profiles/76561198342847927/),
[Workshop listing](https://steamcommunity.com/profiles/76561198342847927/myworkshopfiles/?appid=294100)
and [author collection](https://steamcommunity.com/sharedfiles/filedetails/?id=2773216059)
(six items, zero comments/discussions). No author repo link or general reuse policy found.

Relevant exception: on [More Ideological Words](https://steamcommunity.com/sharedfiles/filedetails/?id=2643795171),
purpleyam permits translations 2022-02-15 and 2022-08-25. Replies address translations
of that mod; no permission to redistribute dodo textures or all author's
mods. GitHub reference in that item's comments is Sarg Bjornson suggesting own code,
linked Gist is third-party error log, not purpleyam's repo.

Author reply 2024-04-03 discusses checking their mods for 1.5, so original's 1.4
declaration must not be used to assert author inactivity or abandonment. No new permission
or refusal applicable to Dodos found: `visibility: silent` remains supported category.
Scope covers these public Steam pages as retrieved 2026-09-12, not deleted/private content
or private correspondence; no message sent to author.
Firecrawl CLI unavailable; web search and direct HTTP fetch used instead.

## Earlier journal

Dated sections 2026-09-12 to 2026-10-11 (preview overlay, translation audit, technical validation, cumulative audit, attribution and dependency corrections, 2026-09-28 re-audit, preview migration, 2026-10-10 audit, gallery runs, CI template refresh) in `docs/runs/status-journal-2026-10-16.md`. Facts still holding: settings and l10n `not_applicable` (patch hash `3229f81d3345`), no owned strings, Check-Mod.ps1 passes, ModIcon and Preview regenerated 2026-10-10, ModIcon.png 35 KB accepted.

## Removal check E played by Pickle (2026-10-11)

`08-removal.feature` (E1 save with mod, E2 load without it) passed, ticket 162e, evidence `Tests/Pickle/Evidence/2026-10-11-removal`. TESTING.md E now describes it. Case D still open: no step counts dodos already on map (question to NPT pending in Ticket Manager relay).

## Audit replay 2026-10-16

AUDIT.md (protocols HEAD 005d9b2) replayed from `setupRepo` to `playTests`: transitions up to `writeTests` hold, `workflow_stage: playTests[1.0.0]` stands, `protocols_read_sha` current. `Check-Status.ps1 -Strict`: 0 error, 1 warning (`visibility: silent`, documented category). `Check-Mod.ps1`: four checks pass. 8.m holds: no commit under `Mod/` since `code_review_sha`. Evidence pruned (2 superseded folders, 83 MB).

Open in `playTests`:
- 8.c / 8.f: gallery 07 passes (gallery9, 2026-10-14, 1/1) but capture read and refused: dodos about 40 px, coats unreadable, wide bare ground. Needs much tighter crop on five birds. Nothing candidate in `Art/Gallery/`.
- 8.g / 8.k: case D (add mid-save) still no step counting existing dodos (question to NPT pending).
- 8.l: `docs/runs/` holds only 2026-09-28 line; gallery and removal runs of 2026-10-10 to 14 need one line each.
- `tested_1_7`: not yet set; 1.7 pass starts after green 1.6 `playTests`.
- `scripts/Check-Mod.ps1` row in `LOCAL_SCRIPTS.md` awaits Virginie's validation.
- STATUS.md is 40 KB (WARN): fold dated sections above into `docs/runs/` at next commit.

## Gallery 07 recapture queued 2026-10-16

`07-gallery.feature` rewritten at `7b19f76` (Nelim styled: LongOily hair rgb 120,50,30, mustard BasicShirt, own face; framing by `I frame the area centred on` at root size 7 and 4.5). Ticket 04c2 ran 2026-10-16: 0/2, undefined step (`stands at ... facing South` lacked the `Nelim's Pickle Tools:` prefix, fixed `eab82cc`). Resubmitted 2026-10-17 as `20261017-210155-026-4ba8` (galerie map, nobatch, evidence `Tests/Pickle/Evidence/2026-10-17-gallery11`), in queue: on `RUN_DONE`, open both captures, give verdict (GALLERY.md), add one line to `docs/runs/`. New hair, colour, shirt steps unplayed; undefined step is test-side fix. Subtitles stay in `PUBLICATION.md` ("Gallery subtitles"), burn in with `Add-Subtitle.ps1` after acceptance. TM registered CCD, no pending message.
## Gallery 07 run 4ba8 read, TM request pending (2026-10-18)

Ticket 4ba8 finished 0/2 (`Tests/Pickle/Evidence/2026-10-17-gallery11`, both captures opened): both red on the coat-count assertion, not on the staging. Scenario 1: "of 12 RG_Dodo, 0 different extra coats drawn (original x12)": patch not applied in the galerie map, or the assertion reads the wrong thing; check the map loads `Mlie.ReGrowthExtinctAnimals` and this mod. Scenario 2: "no animal of kind RG_Dodo named coat-N": the assertion step only finds animals named `coat-N`, scenario names them Dodo1..5; rename or drop the step.
Captures not gallery quality: Nelim and dodos about 40 px on the 1920x1080 frame, UI fully visible (resource list, learning helper, bottom bar), so studio presentation mode and the `I frame the area` zoom did not take effect before the screenshot; birds look brown/grey (coats not drawn). Nothing candidate in `Art/Gallery/`.
Request from Audit via TM (2026-10-18, partial wake between writeTests and shootGallery): polish the gallery scenarios per shot and per transition (clothes, hair, tattoos, weapons, other mods' objects, animals, plants, objects, buildings); read NPT catalogues (`PickleTools/ColonistRace/docs/CATALOGUE-APPAREL|LOOKS|WEAPONS-CRAFTS|COLOURS.md`, `FACE-PARTS.md`) and `GALLERY-PROPS.md`; searches go through `scripts/SEARCHING.md` then `scripts/Search-Workshop.sh`; release rules Closing pass 9a (gameplay Pickle steps) and 9b (prop catalogue). Catalogues, GALLERY.md and GALLERY-PROPS.md read; nothing edited yet. Decided 2026-10-18 (Virginie): wait for `shootGallery` (AUDIT.md 9.0: the `write-shotlist` skill runs there and nowhere before). Meanwhile, test-side only: `wsl-deps.galerie.map` gained `OskarPotocki.VanillaFactionsExpanded.Core 2023507013` (probable cause of the 0-coat assertions: ReGrowth's own dependency was not staged; the minimal map names it too); the two assertions are left as written until a run shows otherwise; `docs/runs/` has the 04c2 and 4ba8 lines. Gallery 07 refiled 2026-10-18 as ticket `20261018-055002-166-3db2` (galerie map with VEF, tree d5a4bcd, evidence `Tests/Pickle/Evidence/2026-10-18-gallery12`): playTests diagnostic of the coat assertions only; on `RUN_DONE` read summary.json and junit.xml, captures stay unaccepted (gallery belongs to `shootGallery`), add one line to `docs/runs/`. At `shootGallery`: write-shotlist first, then the polish request from Audit (catalogues, GALLERY-PROPS.md, Closing pass 9a/9b).
Process slip: one `grep` used on AGENTS.md at the protocols root (no-grep rule), reported to Virginie in the session.
Ticket 3db2 (gallery12) ended 2026-10-18 with no report (launcher exit 3, `no-report.txt`): mod 2816938779 declares no packageId, tar errors on textures. Test-side or staging fault, coat assertions still undecided. gallery10 and gallery11 read earlier (0/2 each). Evidence pruned 2026-10-18 (gallery2, gallery5, 125.6 MB). Next: find the launch fault, refile gallery 07 as a small ticket.
