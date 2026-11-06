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
  - verified: Preview re-rendered 2026-11-06 (migrated config, titleSize 54, 3 lines, suffix below), echo clear of title and description, no clipping; committed; validated by Virginie 2026-11-06
  - unverified: ticket 268e (2026-11-03) is NOT a pass: filed without -DepMap, so nelim.pickletools.coatsteps was not staged and its only scenario was skipped (0 passed, 1 skipped). Not counted. Refiled 2026-11-06 as 20261106-003950-422-fadc with -DepMap wsl-deps.sans-facultatifs.map (evidence Tests/Pickle/Inbox/2026-11-06-coats-minimal); delete the 2026-11-02-coats-minimal evidence at RUN_DONE
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
protocols_read_sha: 28785802f833b595d4add3702a39c6c162346fbc
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

Dated sections 2026-10-11 to 2026-10-25 (removal check E, audit replay 2026-10-16, gallery 07 runs 4ba8 to 0285, ReGrowth 1.6/1.7 items) folded into `docs/runs/status-journal-2026-10-16.md` on 2026-11-02.

## Current state (2026-11-02)

Resumed 2026-11-02 (protocols_read_sha 6da222f0). Gallery 07 coat assertion (0 extra coats of 12 RG_Dodo, 4 wanted) red on galerie map in every run (gallery11 to gallery15), cause undecided. Ticket c46f (minimal map, alone) ended 2026-10-29 exit 11 in 12 s, no report: WSL not responding, host fault. WSL answers now; refiled as `20261102-205114-745-268e` (filter `04-coats-on-spawn::thirty adult dodos`, evidence Tests/Pickle/Inbox/2026-11-02-coats-minimal). On RUN_DONE: summary.json (exitReason first), junit.xml, one line to docs/runs/, Inbox emptied. Green means galerie-map fault; red means mod or step fault. Gallery polish waits for `shootGallery`. Open: case D (add mid-save), `tested_1_7`, `Check-Mod.ps1` row in LOCAL_SCRIPTS.md awaits Virginie.

Social preview uploaded 2026-10-25 (GitHub Settings, Social preview) from Mod/About/Preview.png, commit 7efd765. social_preview_sha256: adf5f0cea78ddaebcd2abba834888790f25c8c43b9c7df694e5b0ac13c5dc8e9

Resumed 2026-10-25 (protocols_read_sha 709f94c1, no protocol change): coat assertion replayed alone on the minimal map (sans-facultatifs, no galerie) as ticket 20261025-135803-629-c46f, filter 04-coats-on-spawn::thirty adult dodos, tree 4f63d8f, evidence Tests/Pickle/Inbox/2026-10-25-coats-minimal. On RUN_DONE: summary.json (exitReason first), junit.xml, one line to docs/runs/, Inbox emptied. Green means galerie-map fault; red means mod or step fault.

Session code CCD given 2026-10-25 (Virginie); title: colorfulcoats.dod.../playTests[1.0.0].
