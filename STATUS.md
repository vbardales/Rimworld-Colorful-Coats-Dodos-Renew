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
protocols_read_sha: f0219f10b948804b3bfd2586c5fca74bf45c3805
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
Places read: 2026-11-07 (SANCTUAIRE-LIEUX, EMBELLISSEMENT-LIEUX rows of the enclosures; SANCTUAIRE-CASES is dated 2026-10-06 and not regenerated). Tribe read: 2026-11-07 (NELIM-PROFIL, SHOGUN-PROFIL, CATALOGUE-ANIMAUX, GALERIE-COLONS; APPARENCES-CANON and LOOKS-VALIDATION by grep only).

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
Next: recompose each scene (closer camera, clear the stray animals, props that tell the instant), then Check-ShotlistVsScenario and refile on auto.

OptionalCompat (Audit 4.b/4.e, 2026-11-07): Mod/About/OptionalCompat.xml written, Check-OptionalCompat.ps1 OK (3 declared). Open: workshopId of ReGrowth.BOTR.ExtinctAnimalsPack and ReGrowth2.ExtinctAnimals (not in registry, Steam search page did not load); the Mlie entry carries 3602926791. Check whether Workshop item 3820991509 (Mlie.ReGrowthExtinctAnimals) is a successor. Unpushed commits: yes.
