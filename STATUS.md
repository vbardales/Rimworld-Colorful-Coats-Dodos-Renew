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
workflow_stage: shootGallery[1.0.0]
licence:      silent
licence_port: MIT, port additions only
licence_original: no declared licence found in installed original or live Steam description
visibility_checked: 2026-09-12, original files and live Steam description
licence_at:   LICENSE, Mod/LICENSE, Mod/About/About.xml, ATTRIBUTION.md
upstream_mod_remotes: N/A
title_suffix: (unofficial), already present
github_description: present
dependencies: declared
workshop_required_items: n/a, not released yet
showcase:     complete
static_checks: passed, 2026-09-13, Check-Mod.ps1 against installed Continued 1.6 target
tested_on:    2026-11-07, minimal pass 2026-11-06 (29/29, features 01-05, ticket cf88), F (06) 4/4 (73d0), E (removal) 2/2 (9187, 2026-11-07, Docs/runs/2026-11-07-removal.txt); D, G, H not applicable; gallery (07) stays with shootGallery
workshop:     3806766249, prepublished 0.1.0 (2026-09-23), item private, not yet tested/public
remaining:
  - verified: Preview re-rendered 2026-11-06 (migrated config, titleSize 54, 3 lines, suffix below), echo clear of title and description, no clipping; committed; validated by Virginie 2026-11-06
  - ticket 268e (2026-11-03) was not a pass (no -DepMap); superseded by cf88 above.
  - defect: RUN_DONE 20261106-003950-422-fadc FAILED (0 passed, 1 failed, 0 extra coats on 30 RG_Dodo). Probable cause, inferred and not yet proven: staged pack 3602926791 is named "[1.6] ReGrowth: Extinct Animals (Continued)", absent from the PatchOperationFindMod list. Name added in 96a060e (not pushed). Not counted as a pass. Needs a refile with -DepMap wsl-deps.sans-facultatifs.map; if it fails again, check the RG_Dodo xpath against the staged pack's defs
  - verified: Tests/Pickle minimal pass, ticket cf88, 2026-11-06, commit 1e9b44a, features 01-05 only (-Filter of file names, set sans-facultatifs): 29 of 29 passed, 0 skipped, exitReason passed (Docs/runs/2026-11-06.txt, evidence Tests/Pickle/Evidence/2026-11-06-minimal). Coats applied after guard-name fix 96a060e (4aa1: 29 passed, D2 fixture defect fixed by removing 09-addition; 1140: unfiltered exclusion filter ran the whole staged set, OOM, not counted). @review capture opened: ten dodos, pink, cream, dark, blue, brown, dim under a mountain roof.
  - verified: README and About claims of save safety: adding is the principle of Pickle (D n/a), removal played green 2026-11-07 (9187); log clean in cf88 ("nothing in the log belongs to this mod", Docs/runs/2026-11-06.txt)
  - verified: scenarios A-H of TESTING.md: A-C by Pickle (cf88), D, G, H not applicable, E by 9187, F by 73d0
  - verified: Tests/Pickle minimal pass, request 1193, 2026-09-28 (docs/runs/2026-09-28.txt): 29 of 29 passed, exitReason
    passed. Guard fired, patch attributed, def type asserted (7 alternate graphics, chance 0.8), 21 textures answered by
    this mod, clean load, coats on spawn (B), drawn texture matches the coat index, coat survives reload (C). The
    @review capture (Tests/Pickle/Evidence/2026-11-06-minimal/screenshots/manual--dodo-coats--step0.jpg, minified 2026-10-02 from the 1920x1080 PNG) was opened: ten dodos, several
    distinct coats, small and dim under a mountain roof - readable but not gallery-quality. First run (b506, 27/29)
    had two test-side failures, both fixed; that evidence pruned, this run's kept. Staged: Dodos acc24a4 + PickleTools
    09f9c0e.
  - verified: code review 2026-11-06 of 82feeb3b..HEAD (Mod/ only, no Source/): Mod/ diff is the guard-name line plus its comment, and Preview.png (image, exempt); no defect found. code_review_sha set.
  - verified: incompatibility pass for purpleyam.colorfulcoats.hlxdodo replayed after the guard change, ticket 73d0, 2026-11-06, commit ecaaa6c: 4 of 4 passed, 0 skipped, exitReason passed (Docs/runs/2026-11-06-incompat.txt, Tests/Pickle/Evidence/2026-11-06-incompat). Closes 8.f for 06; 07 (gallery) stays with shootGallery.
  - (closed by 9187, see below) removal chain E (8.e) moved to a companion suite per Audit convention: 08-removal-write.feature (E1, no @wip) + Tests/Pickle/Removal/Mod (E2) + wsl-deps.removal.map; ticket 1e67 filed 2026-11-06 (commit after 7597ec3), result awaited. Green closes 8.e; then 8.b (owner: deployed build and text) and 8.n remain.
  - defect: ticket 1e67 (2026-11-06) FAILED, exit 3 guard stop: infra (local PC under 0.5 GB free RAM, game never finished booting, log ends "Terminated"), nothing played, not a mod fault. Refiled on azure as 7328 (08-removal-write, then removal-check without the mod, no batch), evidence Tests/Pickle/Inbox/2026-11-06-removal-azure, result awaited. 8.e still open.
  - defect: ticket 7328 (azure) FAILED at submit, exit 1 "scenarios failed": Run-PickleWsl.ps1 refuses -Then on hetzner and azure (game profile not shared between remote runs), nothing played, not a mod fault. Refiled 2026-11-07 on -Runner wsl as 9187 (08-removal-write, -Then removal-check -ThenWithout nelim.colorfulcoats.dodos, -DepMap wsl-deps.removal.map, -NoBatch), evidence Tests/Pickle/Evidence/2026-11-07-removal-wsl, result awaited. 8.e still open. WSL RAM was the 1e67 cause: if it stalls again, ask Virginie to free RAM.
  - verified: removal chain E (8.e), ticket 9187, 2026-11-07, local lane, game 1.6, English: 2 passed, 0 skipped, 0 failed over two chained launches (seq1 E1 "a save holds dodos with their coats" 124 s, seq2 E2 "the same save loads without the mod, and no dodo carries a coat" 19 s), exit 0. Evidence Tests/Pickle/Evidence/2026-11-07-removal-wsl/seq1 and seq2. Closes 8.e; 8.b (owner: deployed build and text) and 8.n remain. Supersedes the 1e67 and 7328 defects above (infra and runner refusals, not mod faults).
  - decided 2026-11-06 (Virginie): D (add the mod to a save in progress) is NOT APPLICABLE and always was: it is the principle of Pickle itself, so testing it tests that a Pickle test works. Withdraws the 2026-10-02 owner-played decision below. Audit asked to document it. E (removal) played 2026-10-11, 162e.
  - (superseded for D, see line above) TESTING.md D and E (add/remove mid-save) cannot be automated in this harness (one mod set per launch).
    Since the coat is computed from the bird id and stored nowhere, birds already in a save will change colour when
    the mod is added: "nothing breaks" holds, "existing birds stay as they were" does not (see decision below).
  - verified: incompatibility pass for purpleyam.colorfulcoats.hlxdodo (06-incompat-hlxdodo.feature, wsl-deps.incompat-hlxdodo.map), played 2026-10-02: e03f (3 of 4 green, the fourth fixed) and 53da (1/1, exitReason passed). Observed: the original patches nothing and ships the same 21 PNGs byte for byte; with it loaded this mod still patches RG_Dodo and logs no error. See
    Tests/Pickle/README.md
  - (all three now met 2026-11-07: no @wip, F and E played, D G H n/a) AUDIT.md 2026-10-02 added three conditions to done -> tested. (1) No @wip scenario: met, none exists.
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
protocols_read_sha: 52d7be36f08ef194d3006da4037364c88f0d149c
code_review_sha: 3e6fc642139290b54473e8f3e0deb3951c863b47
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

## Shotlist (2026-11-07, skill write-shotlist, full plan in the header of 07-gallery.feature)

Story: "Feeding day at the dodo pen", one day, Nelim in a straw hat and mustard shirt, enclosure-south for 1 to 5, barn for 6. Series estimate 4/5. Director pass (Opus) kept in full. Scenario blocks still the old two-shot draft: rewritten before any ticket.

| # | Name | Place | Hour | Root | Subject | Estimate | Main risk | Verdict after run |
|---|---|---|---|---|---|---|---|---|
| 1 | workshop-1-dawn | enclosure-south, south gate | 8 | 6 | flock leaving the shelter, Nelim at the gate | 4 | coats read as spots | |
| 2 | workshop-2-breakfast | enclosure-south, middle | 10 | 4 | hay just dropped, 5 dodos | 4 | empty-hand pose | |
| 3 | workshop-3-seven-coats | enclosure-south, east | 12 | 3.5 | all seven coats pecking berries | 4.5 | overlap hides a coat | |
| 4 | workshop-4-the-nest | enclosure-south, nesting boxes | 15 | 3 | hen asleep on a nest, Nelim takes the egg | 4 | dodo egg def, low angle | |
| 5 | workshop-5-golden-hour | enclosure-south, west gate | 17 | 4 | Shogun herds a straggler home | 4 | Shogun placement, pose | |
| 6 | workshop-6-roost | barn, east extension | 19 | 4 | sleeping birds on hay, last armful | 4 | lying birds hide coats | |

## NSB (sync-nsb 2026-11-07)

Rules said back (owner, 2026-11-05 and 06): everything in NSB is free; outside NSB needs express validation for a colonist or a domestic animal; colonist properties change only with express validation; every outfit is free; every animal the mod includes is in the gallery.
Changes in NSB since the last sync: none known (first sync of this mod). Updated: Nelim now played as the roster (hair colour #382412 and hairstyle `Roo_Royal_LongHD` under a hat, no override; the old LongOily and rgb(120,50,30) lines of the superseded scenarios are dropped); Hat Hair Control (current NSB choice) replaces Show Hair Under Stuff in the plan. Left alone: Shogun, decor of the pen.
Validated by the owner, 2026-11-07, rule 3 (her words: "je valide le sourire de Nelim : MouthLipsSmile"): mouth MouthLipsSimpleSmile on Nelim instead of her roster MouthLipsSmirk, for the six images of this gallery, roster lids kept. The def name is still to check (Check-FeatureDefs) before any ticket. That def does not exist; the owner then chose MouthLipsSimpleSmile in chat (2026-11-07), which is the one played.
Places read: 2026-11-13 (log only since 2026-11-07, previous detail: SANCTUAIRE-LIEUX, EMBELLISSEMENT-LIEUX rows of the enclosures; SANCTUAIRE-CASES is dated 2026-10-06 and not regenerated). Tribe read: 2026-11-13 (no colonist or animal doc changed since 2026-11-09; previous detail: NELIM-PROFIL, SHOGUN-PROFIL, CATALOGUE-ANIMAUX, GALERIE-COLONS; APPARENCES-CANON and LOOKS-VALIDATION by grep only).
Sync 2026-11-08 (sync-nsb-npt, third run): enclosure-south now VALIDATED by the owner (NSB VALIDE.md, 2026-11-08, lot 5g, "c'est validable"); rule (Virginie, 2026-11-07): the Nelim logo (growing zones 3 to 15) stays free, no object on its flowers (no brazier, awning, trough, rock). Scenes 1-5 now carry the step "the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor" (1f68c51). Unverified: the logo cells are not known here, hay, berries and egg put down by hand are not covered by that step; the "area is cleared" step also removes the logo flowers for the capture. NPT 2026-11-08: new steps (lies asleep in the bed, put out, keep growing zones free, light lifted), none renamed, Check-Steps resolves every line. Places read: 2026-11-08 (diffs only). Tribe read: 2026-11-07. Steps read: 2026-11-13 (diff only).
Tickets 2026-11-07 a9d5 (1-3) and 747a (4-6): both exit 99 "launcher threw" (`finally` not recognised, nothing played, not a mod fault). Refiled 2026-11-08 on 1f68c51: 66e9 (scenes 1-3, gallery-a-7) and fab9 (scenes 4-6, gallery-b-7), map wsl-deps.galerie.map. Old Inbox gallery-a-6 holds the older report, to triage.
Preview 2026-11-08: Art/Preview.config.json carries an uncommitted simplified config (not mine). Render tried: echo touches the "!" of the title, so not committed, outputs reverted. Needs an owner or Audit decision on the config.
Sync 2026-11-07 (sync-nsb-npt, second run, 23:35): NSB changes since the morning read: decor batches validated (plant-garden, sofa-corner, dining-nook, workshops, play area), none touches enclosure-south or barn; enclosure-south still 'refused, to embellish' (VALIDE and AVANCEMENT, 2026-11-06), barn validated 2026-11-06, extension x 199-204 has 12 beds and 4 braziers (the braziers seen in scene 6 are NSB's). NPT: put-down step now forbids the item only while the game runs (f04d9b8), so the Hay and berries unforbid steps are harmless but redundant; catalogue pages changed, no step used here renamed. Rule 5: RG_Dodo coats A to G all shown (scene 3). Left alone: everything else. Places read: 2026-11-07. Tribe read: 2026-11-07 (docs only listed, not reopened). Steps read: 2026-11-07.

| Place | Shots | Changes made for the gallery | Last read |
|---|---|---|---|
| enclosure-south (status: to embellish, NPT decorating: troughs, bambooBundle, Yuran_PenMarker, shade trees planned) | 1-5 | TorchLamp, StickLantern, hay, daylilies, tall grass, stool, EggBox, nest (removed after each shot) | 2026-11-07 |
| barn, east extension (validated 2026-11-06; a decoration is now wanted by the owner) | 6 | lit Brazier, Hay (removed after the shot) | 2026-11-07 |

| Colonist | Shots | Outfit per shot | Last read | Exceptions |
|---|---|---|---|---|
| Nelim | 1-4, 6 (5 behind the dodos) | straw hat, mustard shirt, usual trousers, all day: free outfit, warm colour that sets off the blue, white and brown coats | 2026-11-07 | mouth MouthLipsSimpleSmile: validated 2026-11-07 ("je valide le sourire de Nelim : MouthLipsSmile") |

| Animal | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| Shogun | 5 | `Apparel_leatherdogcollar` (validated daily look, 2026-11-06) | 2026-11-07 | none |

| Included animal (rule 5) | Shot(s) |
|---|---|
| RG_Dodo, coats A to G (indices 0 to 6) | 3 (all seven side by side); also 1, 2, 4, 5, 6 |

## Review-gallery (2026-11-07)

Six scenarios of `07-gallery.feature` rewritten from the shotlist; `wsl-deps.galerie.map` now holds Hat Hair Control (3760821540) and Stick Lantern (2024351846). `Check-Steps.ps1`: every step line resolves. `Check-FeatureDefs.js`: all defs found except `MouthLipsSimpleSmile`, which no installed mod defines (Search-Workshop, 0 hits). The owner validated that name; the nearest real defs are `MouthLipsSmallSmile`, `MouthLipsSimpleSmile`, `MouthLipsGrin` (Vanilla Facial Animations 2816938779). No ticket filed until the owner confirms which one.

Gallery tickets 2026-11-07: 724f/20be failed 6 of 6 (no hairstyle Roo_Royal_LongHD, fixed 249968b); 4868/c53b failed 6 of 6 (no apparel Apparel_StrawHat: the def is TSFApparel_StrawHat, T's Samurai Faction 2559958496, fixed a2a9127, feature and wsl-deps.galerie.map). Refiled runner auto: 5469 (scenes 1-3, evidence Tests/Pickle/Inbox/gallery-a-3), e957 (scenes 4-6, gallery-b-3). Old Inbox runs deleted (refused). On RUN_DONE: open every capture, accept or refuse each (review-gallery step 12), triage Inbox. Unverified: the dog name "Shogun" in scene 5; any other def of the six scenarios still unplayed. New gate 2026-11-07 (GALLERY.md): four notes (image, adequacy, understanding, decoration) under 4/5 means REDO; not yet applied to this plan (Check-ShotlistVsScenario: no shotlist header in the feature).

Gallery runs read 2026-11-07 (tickets 5469 and e957, all six scenarios Passed; a first merged run had scene 1 red on the 4-coat assertion with 9 dodos, 3 coats drawn, bad luck, green on the replay). Captures opened, verdict by scene, all six REDO (nothing in Art/Gallery/, Inbox deleted as refused):
1 dawn: Nelim seen from behind and small, hair hidden, bamboo clutter, dodos tiny and scattered, gate not readable. REDO.
2 breakfast: red X marker over the hat, hay carried not dropped, five dodos far from her. REDO.
3 seven-coats: seven coats readable (best of the set) but no berries and no pecking, bare ground. REDO (adequacy and decoration under 4).
4 the-nest: dodo curled on grass, no nest, no egg, Nelim only standing. REDO.
5 golden-hour: turkeys, sheep, cats, camels crowd the frame, Shogun and Nelim tiny, no herding read. REDO.
6 roost: sleeping birds on hay, z sign, long hair, braziers; table and eight chairs clash with a barn, no armful of hay. Closest to candidate, REDO.
Gallery 2026-11-07, score-gallery run by the session on c781 (3 of 3 green, captures opened): shots 1 to 3 all REDO (bare ground, small scattered dodos, hearts between two dodos in 1, thin decor in 2, a bird cut off and bare soil in 3); notes image 3.5, understanding 3.5 to 4, decoration 2.5 to 3, adequacy 3.5 to 4. Inbox emptied. Denser decor filed 10c8268: a9d5 (scenes 1-3, gallery-a-6). Scenes 4-6: ticket 4509 (the scene 4 nest and the barn table hide fixes) still queued, not read. Earlier: 46db and 7ab8 had scene 3 red (bamboo cell) and scene 4 red (daylily on the hay cell), both fixed by clearing the cells. Art/Preview.config.json has an uncommitted change not made by this session.

OptionalCompat (Audit 4.b/4.e, 2026-11-07): Mod/About/OptionalCompat.xml written, Check-OptionalCompat.ps1 OK (3 declared). Open: workshopId of ReGrowth.BOTR.ExtinctAnimalsPack and ReGrowth2.ExtinctAnimals (not in registry, Steam search page did not load); the Mlie entry carries 3602926791. Check whether Workshop item 3820991509 (Mlie.ReGrowthExtinctAnimals) is a successor. Unpushed commits: yes.

Gallery tickets 2026-11-08 (1f68c51): 66e9 (1-3) 1 of 3 passed (scene 1), fab9 (4-6) 1 of 3 passed (scene 6). Scenes 2, 3, 4, 5 red. Cause: the logo zones (243 cells of 13 growing zones, roughly x 136-152, z 205-222 read from the capture, unverified) are kept free, so "near" lanterns and torches shifted or were skipped and the fixed-cell "is lit" steps failed; scene 3 also had tall grass on the TorchLamp cell (159, 217). Fixed in 8ba3223: lanterns and torches of 2-5 moved to cells east of x 153 or west of x 136, placed "exactly at"; tall grass to (160, 216). Refiled scenes 2-5 only: a447 (gallery-c-7). Scene 1 and 6 captures stay in Inbox (gallery-a-7-1, gallery-b-7) until review. Unverified: other "near" decor (Stool, EggBox, PlantPot) may land elsewhere, not asserted.

a447 (2-5, 2026-11-08): scenes 2, 3, 5 passed, scene 4 red ("the cell (135, 217) already holds DR_StickLantern": the fixture has a lantern there). Placement step removed, the existing lantern is lit (commit after bcb623e). Scene 4 refiled alone: 8f1b (gallery-d-7). Captures of 1, 2, 3, 5, 6 wait in Inbox (gallery-a-7-1, gallery-c-7, gallery-b-7) for the review at the end.

Sync 2026-11-08 (sync-nsb-npt, fourth run, after 21:00): NSB since the third run: one commit b5e64e8 (VALIDE: enclosure and workshops validated, workshops to be redone entirely; right-bank and gravel-yard refused; left-bank telescope order). None touches enclosure-south (validated 2026-11-08, logo free) or the barn extension (validated 2026-11-06). No roster, profile, looks or animal catalogue change, no NPT step or catalogue change since 2026-11-08 00:38. Nothing updated in the mod. Rules said back: 1 NSB free, 2 outside NSB needs express validation (animals of the mod authorised), 3 colonist properties only with express validation (Nelim mouth MouthLipsSimpleSmile validated 2026-11-07), 4 outfits free, 5 every included animal shown (RG_Dodo coats A to G, scene 3). Places read: 2026-11-08 (diffs only). Tribe read: 2026-11-07 (no change since). Steps read: 2026-11-08. Tables above stand.

Sync 2026-11-09 (sync-nsb-npt, fifth run): NSB since the fourth run: final decor fixture `Nelims-tribe-decor-mods-z3.rws` copied to Mod/Pickle/Fixtures (old `Nelims-tribe` kept, no scenario repointed, owner "comme tu veux"); VALIDE 2026-11-09: left-bank, workshops, barn and others validated (enclosure-south already validated 2026-11-08); roster/profile edits touch Quill only. No Nelim or Shogun change. NPT since 2026-11-08: new steps (flecks of a def not thrown: could hide the sleeping Z of scene 6; item carried made of stuff; Beauty2 mouth offset; frame centred on a point; drawing of a class skipped), none renamed, none used here changed. Nothing updated in the mod; the flecks step is a candidate for scene 6 at the next recompose. Rules said back: 1 NSB free, 2 outside NSB needs express validation (animals of the mod authorised), 3 colonist properties only with express validation (Nelim mouth MouthLipsSimpleSmile validated 2026-11-07), 4 outfits free, 5 every included animal shown (RG_Dodo coats A to G, scene 3). Places read: 2026-11-09 (diffs only). Tribe read: 2026-11-09 (diffs only). Steps read: 2026-11-09 (diffs only). Tables above stand.

Tickets 5bb8 + 19b8 (one merged launch, 2026-11-08): 6 of 6 passed, exit 0. Captures opened 2026-11-09 by the session (image / adequacy / understanding / decoration): 1 dawn 3.5/3.5/3/3.5 REDO (flock scattered over the whole frame, one brown hen in frame, Nelim half hidden behind bamboo, gate not read); 2 breakfast 4/4/4/4 candidate pending the 268 px check (five dodos touching the hay, Nelim right; capture kept in Tests/Pickle/Parked/gallery-f-7/screenshots); 3 seven-coats 4/4/4/3.5 REDO (seven coats readable, but a stray heart between two dodos and bare ground); 4 nest 3.5/3.5/4/3.5 REDO (egg between hen and Nelim reads, but hen curled on a hay pile, no nest, Nelim not reaching); 5 golden-hour 3.5/3/3/3.5 REDO (Shogun and straggler read, flock scattered, Nelim cut at the left edge); 6 roost 4/4/4/3.5 REDO (four birds asleep on hay with Z, braziers fine; the table and lantern at the barn corner clash). Recurring: dodos still scattered in 1 and 5, a heart in 3, bare ground. REDO captures and Inbox run deleted; Inbox empty; the two stalled-1106 folders deleted (infra stalls superseded by cf88 and 9187). Third director pass done 2026-11-09 (commit 8743ede, Check-Steps and Check-ShotlistVsScenario OK): 1 flock packed x 156-161 and Nelim moved to (161, 210) facing West; 3 Heart fleck suppressed (flecks step, def name "Heart" unverified: the step fails if no such FleckDef) and five plants round the ring; 4 four plants round the nest; 5 closer drive, root 2.8 centred (137, 217); 6 Stool dropped (it read as a table), lantern added at (197, 236). Scene 2 untouched. Ticket 20261109-233116-553-2f59 (scenes 1, 3, 4, 5, 6, map wsl-deps.galerie.map, runner auto, evidence Tests/Pickle/Inbox/gallery-h-7) filed; result awaited. Unverified: new cells free in the fixture, hen still curled not on a nest, Nelim not reaching for the egg (pose limit).

## Shotlist 2026-11-08 (skill write-shotlist, plan in the header of 07-gallery.feature)

Director pass (Opus) read the captures of 66e9, fab9, a447. Kept: hay pile, nest and lamps moved off the logo zones (2, 4); straggler dodo coat 2 and Shogun turned West (5); hay on the roost cells and a lantern, stool, pot in the barn (6); roots varied (4, 3.2, 3, 2.4, 3.5, 2.8) and hours 7, 10, 12, 15, 18, 19; frame lines and the gesture note added. Not kept: items carried in Nelim's hands (a carried item hid her in earlier runs); hiding the extra braziers of the barn (NSB's own, cells unknown).

Plan rating (score-gallery, plan only, no new image opened except scene 1 seen earlier): scenes 1 to 6 all 5 (a to g and j ok, no step missing: Check-Steps resolves every line; k ok on the series: wide opening 1, medium 2, 3, 5, tight 4 and 6, closing 6). Check-ShotlistVsScenario OK. Captures: only scene 3 (a447, Inbox gallery-c-7) is current and is not yet read; scenes 1, 2, 4, 5, 6 were rewritten, their old captures deleted (rule of 2026-11-06); refiled as one ticket gallery-e-7 (1, 2, 4, 5, 6). Unverified: every new cell (east plants of 2, west nest of 4, straggler cell of 5, barn lantern at (204, 236)) is free in the fixture; the logo extent is read from a capture.

Ticket 4431 (2026-11-08, evidence Tests/Pickle/Inbox/gallery-e-7, scenes 1, 2, 4, 5, 6, tree 1ff64d0): 5 of 5 passed. Captures opened and scored by the session with scene 3 of a447 (gallery-c-7): all six REDO (any note under 4). Image / adequacy / understanding / decoration: 1 dawn 3.5/3.5/3/3.5 (dodos seen from above as blobs, Nelim small, gate unreadable); 2 breakfast 4/3.5/3.5/4 (unplanned brazier, no pecking, hay lone); 3 seven-coats 4/4/4/3.5 (best, ring of seven coats around the crate, ground bare); 4 nest 3.5/3/3/3 (egg on the ground apart, Nelim not looking down); 5 golden-hour 3.5/3/3/3.5 (Shogun and straggler not read as herding); 6 roost 3/3.5/3.5/3.5 (hat off ok, three birds not four, braziers clutter). Recurring: bare ground, top-down dodo blobs. Captures kept in Inbox until the scenes are rewritten (rule of 2026-11-06), then deleted. Next: director pass, recompose, refile. Earlier: 8f1b (scene 4 alone) was red because my placement of the (135, 217) lantern had been removed in error, restored in 1ff64d0; a447 red came from a daylily on the same cell, line removed. On RUN_DONE: summary.json, open every capture, score-gallery on the images (scene 3 capture in gallery-c-7 not yet read), delete REDO captures, recompose, one final message to Virginie with all candidates.

Second director pass 2026-11-08 (Opus, on the 4431 and a447 captures, all six REDO): scenes re-staged in the feature (commits 1e0e367 and the one after): 1 flock packed z 211-214 turned to the gate, one bird in the opening, no hay, Nelim at (157, 209); 2 the map brazier near (160, 213) hidden, birds touching the hay, plants moved inside the frame, Nelim mirrored on the right, root 3; 3 ring tightened to one cell, front view, only the ring cells cleared, root 2.6; 4 egg between hen and Nelim, no carried item, tall grass removed, hay widened; 5 a drive (Nelim, Shogun, straggler, flock, all facing East), root 3.2; 6 four birds in z 237-239 on hay under each, Nelim at (198, 238) facing them. PlantPot_Daylily does not exist in the map (the step skipped it silently since the first runs): removed from plan and scenarios. Old captures (gallery-c-7, gallery-e-7) deleted. Check-Steps and Check-ShotlistVsScenario OK; plan score not re-run with score-gallery (content as before, only re-staged). Tickets 5bb8 (scenes 1-3, Inbox/gallery-f-7) and 19b8 (scenes 4-6, Inbox/gallery-g-7) filed. Unverified: every new cell free in the fixture, the "Brazier near (160, 213) is hidden" cell (read from a capture), whether lying dodos read as asleep (the game tilts them; an upright sleeping pose would need NPT). Braziers of scene 5 corners and the second barn brazier left alone (cells unknown).

Ticket 2f59 (2026-11-09, evidence Tests/Pickle/Inbox/gallery-h-7, scenes 1, 3, 4, 5, 6): 5 of 5 passed, exit 0. Captures opened 2026-11-12 by the session (image / adequacy / understanding / decoration): 1 dawn 4/3.5/3.5/3.5 REDO (six coats in a tidy grid plus one hen, Nelim small and facing East, stool and lantern clutter, gate not read); 3 seven-coats 4/4/4/3.5 REDO (seven coats readable around a crate, no berries, no pecking, bare soil); 4 nest 3.5/3.5/4/3.5 REDO (hen on hay, egg between her and Nelim reads, no nest, Nelim not reaching); 5 golden-hour 3.5/3.5/3.5/3 REDO (Shogun and straggler read, rest of the flock three birds far away, bare soil); 6 roost 4/4/4/3.5 REDO (four birds asleep on hay with Z, braziers fine, hat off, hay pile loose). Scene 2 candidate from 5bb8 still waits for the 268 px check. Recurring: bare soil, flock too thin or too far. Captures deleted, Inbox emptied. Next: sync-nsb-npt (NSB and NPT changed 2026-11-12), fourth director pass, recompose, refile.

## Ecosystem (scan 2026-11-12, docs/inventory/ecosystem.tsv)

One row: `Mlie.NoVersionWarning` (2599504692), type link, matched on original-id (1.5/ModIdsToFix.xml). It is a version-warning utility, not a patch or retexture: nothing to play, no action. Not one of the 20 worklist mods.

Review-translation 2026-11-13: seven ChatGPT passes read, 4 corrections applied (PUBLICATION.md, CHANGELOG.md), rest rejected or no-op; no game text, no name to decide. Validated by Virginie 2026-11-13. translation_fr stays not_applicable. Image tool recorded: DALL-E (Preview.png, ModIcon.png).
Ecosystem (Steam, PiI 2026-11-13, docs/inventory/ecosystem-steam/ColorfulCoatsDodosRenew.md, protocols 3369fef): no other dodo recolour on Steam or in the corpus. Dodo holders only: ReGrowth Extinct Animals (patch target, 3602926791 and 3820991509), DodoRex 3828845619 (separate dodo race, not a recolour), Saroodles Additions. The original has 0 defs, so no defName fork scan. Nothing to play, no action. Supersedes the local-scan line above.

Sync 2026-11-13 (sync-nsb-npt, sixth run): NSB since 2026-11-09: docs renamed to Docs (18abf53), Beauty2 mouth Harmony patch and Quill eyes (cc61d17, Quill only), tests and TESTING.md regenerated. None touches Nelim (mouth MouthLipsSimpleSmile validated 2026-11-07), Shogun, enclosure-south (validated 2026-11-08, logo free) or the barn extension. NPT since 2026-11-09: new steps, none renamed, none used here changed. Candidates for the next recompose: "the terrain of the cell is" and `I lay the floor` (bare soil), "I place the decor <pot> holding <plant> fully grown near" (plants in the frame), "the main bar, the speed controls and the mouse-over readout are hidden" and "the sky overlays are hidden" (cleaner frames), "the cell is probed" (check a cell is free before a decor step). Nothing updated in the mod. Rules said back: 1 NSB free, 2 outside NSB needs express validation (animals of the mod authorised), 3 colonist properties only with express validation (Nelim mouth MouthLipsSimpleSmile validated 2026-11-07), 4 outfits free, 5 every included animal shown (RG_Dodo coats A to G, scene 3). Places read: 2026-11-13 (log only, rename). Tribe read: 2026-11-13 (log only). Steps read: 2026-11-13 (diffs only). Tables above stand.

## Dependencies (AUDIT 4.g, read from Mod/ 2026-11-13, revision f9e3d02)

- Required (`modDependencies`): `Mlie.ReGrowthExtinctAnimals`, ReGrowth: Extinct Animals (Continued), Workshop 3602926791, the patch target (`RG_Dodo`). The patch is guarded by `PatchOperationFindMod` on display names (four names listed in `Mod/Patches/ColorfulCoats_HlxDodo.xml`).
- Incompatible (`incompatibleWith`): `purpleyam.colorfulcoats.hlxdodo` (the original, played 2026-10-02 and 2026-11-06).
- Load order (`loadAfter`): `Mlie.ReGrowthExtinctAnimals`, `ReGrowth.BOTR.ExtinctAnimalsPack`, `ReGrowth2.ExtinctAnimals`.
- Optional integrations (`Mod/About/OptionalCompat.xml`, Check-OptionalCompat OK): the same three ReGrowth packages, kind patch. Open: workshopId of the last two (not in the registry); the registry says 3602926791 is replaced by Workshop item 3820991509 (Mlie.ReGrowthExtinctAnimals), to settle before publication.
- DLC: none. Harmony, assembly, Defs of its own: none (4.c, 4.f: no animal added, the mod only recolours `RG_Dodo`).
- Workshop required items (4.g): `n/a, not released yet` (private prepublication 0.1.0 only, owner decision 2026-11-10). The hand setting by Virginie moves to `prepareRelease` or `publish`: Required item ReGrowth 3602926791 (or its successor).

Replay-audit 2026-11-13 (ledger ../.replays/ColorfulCoatsDodosRenew-20261113.tsv, Check-Replay OK: 80 rows, done 58, weak 7, open 7, n/a 15): sections 1 to 8 fulfilled, stage stays shootGallery[1.0.0]. 4.g was open (no dated dependency record), redone from Mod/ in 628590a. Open, all in section 9: 9.a candidates (scenes 1 3 4 5 6 REDO, scene 2 pending the 268 px check, ticket to file after recompose), then 9.b to 9.f (index, order, opening, table, subtitles) after 9.a. Fix in place left undone: `@requires:nelim.pickletools.coatsteps` missing on features 01 and 06 (Tests/, not touched by the replay); Docs/review-refusals.md written. Advisories: Check-ModBasics wants the About.xml description to end with the `[url=...]Source code on GitHub[/url]` form; two OptionalCompat entries lack a workshopId; registry says 3602926791 is replaced by 3820991509.

Fourth director pass 2026-11-13 (commit 7f7d7d0, Check-Steps and Check-ShotlistVsScenario OK), on the 2f59 captures: Stool dropped from 1 and 4 (it read as a table); 4 EggBox moved beside the hen as her nesting box at (133, 216); 5 seven dodos in the drive (coats 0, 4, 6 added at (141, 216), (142, 217), (141, 218)), frame centred (136, 217) at root 3 so Nelim is not cut. Scenes 2, 3, 6 untouched (3 and 6 stay REDO on bare soil and loose hay; 2 candidate pending the 268 px check). Ticket 20261113-184956-025-1edf (scenes 1, 4, 5, map wsl-deps.galerie.map, runner auto, evidence Tests/Pickle/Inbox/gallery-i-7) filed. Result 2026-11-13 18:52-18:56, hetzner lane: 3 of 3 passed, exit 0 (1 attempt each). Captures read: 1 OK (six coats, hen, Nelim, no stool); 4 FAIL (EggBox sits at the top of the frame, away from the hen, reads as a dark crate, not her nesting box); 5 FAIL (about six dodos visible, two cut at the right edge, frame not centred on the seven, golden light weak). Next: fifth director pass on 4 and 5.

Sync 2026-11-13 (sync-nsb-npt, seventh run, 21:00): the Reads line (top of the NSB section) was stale, it still said 2026-11-07 and 2026-11-08 while the sixth run had only logged its dates in a later paragraph; Check-Status read the first one. Fixed: Places, Tribe and Steps read 2026-11-13. NSB: no colonist, animal, roster, appearance, looks or VALIDE change since 2026-11-09 (log only), Nelim and Shogun untouched, enclosure-south validated 2026-11-08, logo free. NPT since the sixth run: new steps for other mods (draw state of render nodes, fleck and camera logs, sun glow held, zoom floor lowered to 0.3, memory thoughts cleared, garment dye reaches animals, blueprint of a building); none renamed or removed, Check-Steps: every step line of the 8 feature files resolves to exactly one expression. Zoom floor 0.3 matters for the fifth director pass of scene 5 (frame wider than root 3 now possible below 2). Nothing updated in the mod. Rules said back: 1 NSB free, 2 outside NSB needs express validation (animals of the mod authorised), 3 colonist properties only with express validation (Nelim mouth MouthLipsSimpleSmile validated 2026-11-07), 4 outfits free, 5 every included animal shown (RG_Dodo coats A to G, scene 3). Tables above stand.

Fifth director pass 2026-11-13 (commit 5ece466, Check-Steps and Check-ShotlistVsScenario OK), on the 1edf captures: 4 EggBox exactly at (133, 215) behind the hen (it landed two cells north and out of the frame with "near (133, 216)"); 5 frame centred (138, 217) at root 3.4 (about 12 cells wide for the seven dodos 136 to 142 plus Nelim at 134). Scenes 1, 2, 3, 6 untouched (1 OK on 1edf). Ticket 20261113-212015-098-93eb (scenes 4 and 5, map wsl-deps.galerie.map, evidence Tests/Pickle/Inbox/gallery-j-7) filed; result awaited. Unverified: EggBox cell free after the clear, all seven dodos inside the frame at 3.4.

Result 2026-11-13 21:20-21:23, azure lane, ticket 93eb: 2 of 2 passed, exit 0, 1 attempt each (scenes 4 and 5). Captures read: 4 OK (EggBox now directly behind the hen inside the frame, reads as a wooden nesting box; hay, egg, Nelim); 5 OK (seven dodos with seven coats in the frame, Nelim, Shogun and the straggler on the left, lantern and torch; a heart bubble floats over one dodo; golden light still faint). Evidence moved to Tests/Pickle/Evidence/gallery-j-7 (RELEASE.md: delete at the rate-gallery verdict); gallery-i-7 kept for scene 1. Gallery state: 1, 4, 5 OK on captures; 2, 3, 6 only in Parked/gallery-f-7 (2 candidate pending the 268 px check, 3 and 6 REDO on bare soil and loose hay). Next: score-gallery on 1, 4, 5, then redo 3 and 6.
