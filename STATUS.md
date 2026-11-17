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
visibility:   public
github_visibility: public
detached:     yes
workflow_stage: startWatch[1.0.0]
licence:      silent
licence_port: MIT, port additions only
licence_original: no declared licence found in installed original or live Steam description
visibility_checked: 2026-09-12, original files and live Steam description
licence_at:   LICENSE, Mod/LICENSE, Mod/About/About.xml, ATTRIBUTION.md
upstream_mod_remotes: N/A
title_suffix: (unofficial), already present
github_description: present
dependencies: declared
workshop_required_items: done, 2026-11-17
showcase:     complete
static_checks: passed, 2026-09-13, Check-Mod.ps1 against installed Continued 1.6 target
tested_on:    2026-11-07, minimal pass 2026-11-06 (29/29, features 01-05, ticket cf88), F (06) 4/4 (73d0), E (removal) 2/2 (9187, 2026-11-07, Docs/runs/2026-11-07-removal.txt); D, G, H not applicable; gallery (07) stays with shootGallery
workshop:     3806766249, prepublished 0.1.0 (2026-09-23), item private, not yet tested/public
remaining:
  - open 12.c to 12.h (2026-11-17): Check-Status -Strict, caveman minification (12.c bis), CHANGELOG `[Unreleased]` to `[1.0.0]`, dry-run WITHOUT --tags (the old one is void), read its note, then publish with the full 40-character SHA (steam-production approved by Virginie alone, STEAM_REFRESH_TOKEN is hers).
  - open after publish: 13.b subscribe test, Use This Instead row `drafted` then `posted` (14.h), thank-you comments posted by Virginie (PUBLICATION.md), Evidence folders of Tests/Pickle/Evidence without RELEASE.md conditions (gallery-i-7 to gallery-aa-7, 2026-11-06-minimal, incompat, 2026-11-07-removal-wsl; gallery-s-7 and gallery-t-7 are named in the journal, repoint before deleting).
  - closed entries (tests, incompatibility pass, removal E, decisions D/G/H, code review 2026-11-06) moved to docs/runs/status-journal-2026-11-17.md.
session:      local_ed9c3e2d-7d1a-4fb8-b837-a905d235ab81 (2026-10-10 audit pass), registered with the Ticket Manager
updated:      2026-11-17, replay-audit (ledger .replays/ColorfulCoatsDodosRenew-20261117.tsv, 83 rows, sections 1 to 8 fulfilled, first open 9.a: six images refused 2026-11-16, redo pending, stage unchanged). Earlier: 2026-10-10, AUDIT.md re-applied at HEAD 5364411: stage field retired, workflow_stage done -> playTests[1.0.0]
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
protocols_read_sha: 1e7080d0742c4f6411f38c8350606baa18950ad9
code_review_sha: c8f060cb365a32d3cd138a66b67d9730441746a2
echo_review_sha: 07bc36ab056ee29c09608d81ce878b3f0405224a
publication_changelog_review_sha: fc3c332b5c868c1080f1e7f914f209f5383c43eb
thanks_drafted_line: 1.0
social_preview_sha256: e319feb138d13b340f7710ac10eec89d5630d02c412bfb8b8ffd515f8fe0f2f7
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

`visibility` is `public` or `private` (STATUS template; Check-Status WARNs on any other value). Until
2026-11-17 it held `silent`, the provenance category: that category lives in `licence` (`silent`: no declared
upstream licence per repo attribution; the MIT licence for port additions does not change it).
`github_visibility` separately records whether the GitHub repo is public or private.

## Earlier journal

Dated sections 2026-09-12 to 2026-10-11 (preview overlay, translation audit, technical validation, cumulative audit, attribution and dependency corrections, 2026-09-28 re-audit, preview migration, 2026-10-10 audit, gallery runs, CI template refresh) in `docs/runs/status-journal-2026-10-16.md`. Facts still holding: settings and l10n `not_applicable` (patch hash `3229f81d3345`), no owned strings, Check-Mod.ps1 passes, ModIcon and Preview regenerated 2026-10-10, ModIcon.png 35 KB accepted.

Dated sections 2026-10-11 to 2026-10-25 (removal check E, audit replay 2026-10-16, gallery 07 runs 4ba8 to 0285, ReGrowth 1.6/1.7 items) folded into `docs/runs/status-journal-2026-10-16.md` on 2026-11-02.

## Current state (2026-11-02)

Resumed 2026-11-02 (protocols_read_sha 6da222f0). Gallery 07 coat assertion (0 extra coats of 12 RG_Dodo, 4 wanted) red on galerie map in every run (gallery11 to gallery15), cause undecided. Ticket c46f (minimal map, alone) ended 2026-10-29 exit 11 in 12 s, no report: WSL not responding, host fault. WSL answers now; refiled as `20261102-205114-745-268e` (filter `04-coats-on-spawn::thirty adult dodos`, evidence Tests/Pickle/Inbox/2026-11-02-coats-minimal). On RUN_DONE: summary.json (exitReason first), junit.xml, one line to docs/runs/, Inbox emptied. Green means galerie-map fault; red means mod or step fault. Gallery polish waits for `shootGallery`. Open: case D (add mid-save), `tested_1_7`, `Check-Mod.ps1` row in LOCAL_SCRIPTS.md awaits Virginie.

Social preview uploaded 2026-10-25 (GitHub Settings, Social preview) from Mod/About/Preview.png, commit 7efd765. social_preview_sha256: adf5f0cea78ddaebcd2abba834888790f25c8c43b9c7df694e5b0ac13c5dc8e9

Resumed 2026-10-25 (protocols_read_sha 709f94c1, no protocol change): coat assertion replayed alone on the minimal map (sans-facultatifs, no galerie) as ticket 20261025-135803-629-c46f, filter 04-coats-on-spawn::thirty adult dodos, tree 4f63d8f, evidence Tests/Pickle/Inbox/2026-10-25-coats-minimal. On RUN_DONE: summary.json (exitReason first), junit.xml, one line to docs/runs/, Inbox emptied. Green means galerie-map fault; red means mod or step fault.

Session code CCD given 2026-10-25 (Virginie); title: colorfulcoats.dod.../playTests[1.0.0].

## NSB (sync-nsb 2026-11-07)

Rules said back (owner, 2026-11-05 and 06): everything in NSB is free; outside NSB needs express validation for a colonist or a domestic animal; colonist properties change only with express validation; every outfit is free; every animal the mod includes is in the gallery.
Changes in NSB since the last sync: none known (first sync of this mod). Updated: Nelim now played as the roster (hair colour #382412 and hairstyle `Roo_Royal_LongHD` under a hat, no override; the old LongOily and rgb(120,50,30) lines of the superseded scenarios are dropped); Hat Hair Control (current NSB choice) replaces Show Hair Under Stuff in the plan. Left alone: Shogun, decor of the pen.
Validated by the owner, 2026-11-07, rule 3 (her words: "je valide le sourire de Nelim : MouthLipsSmile"): mouth MouthLipsSimpleSmile on Nelim instead of her roster MouthLipsSmirk, for the six images of this gallery, roster lids kept. The def name is still to check (Check-FeatureDefs) before any ticket. That def does not exist; the owner then chose MouthLipsSimpleSmile in chat (2026-11-07), which is the one played.
Places read: 2026-11-17 (log only since 2026-11-14; earlier: 2026-11-14, log only since 2026-11-07, previous detail: SANCTUAIRE-LIEUX, EMBELLISSEMENT-LIEUX rows of the enclosures; SANCTUAIRE-CASES is dated 2026-10-06 and not regenerated). Tribe read: 2026-11-17 (no Nelim, Shogun, roster, appearances or animal catalogue change since 2026-11-14; earlier: 2026-11-14, no colonist or animal doc changed since 2026-11-09; previous detail: NELIM-PROFIL, SHOGUN-PROFIL, CATALOGUE-ANIMAUX, GALERIE-COLONS; APPARENCES-CANON and LOOKS-VALIDATION by grep only).
Sync 2026-11-08 (sync-nsb-npt, third run): enclosure-south now VALIDATED by the owner (NSB VALIDE.md, 2026-11-08, lot 5g, "c'est validable"); rule (Virginie, 2026-11-07): the Nelim logo (growing zones 3 to 15) stays free, no object on its flowers (no brazier, awning, trough, rock). Scenes 1-5 now carry the step "the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor" (1f68c51). Unverified: the logo cells are not known here, hay, berries and egg put down by hand are not covered by that step; the "area is cleared" step also removes the logo flowers for the capture. NPT 2026-11-08: new steps (lies asleep in the bed, put out, keep growing zones free, light lifted), none renamed, Check-Steps resolves every line. Places read: 2026-11-08 (diffs only). Tribe read: 2026-11-07. Steps read: 2026-11-17 (diffs only; earlier 2026-11-13).
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

Gallery verdict 2026-11-17 (Virginie: "Toutes acceptées"): six images accepted, subtitled, contiguous indexes 0 to 6, order 1 dawn, 2 breakfast, 3 seven-coats, 4 the-nest, 5 golden-hour, 6 roost (story order of one day, opening and closing set; table in PUBLICATION.md "Gallery"). 9.a to 9.f done, workflow_stage mountPreview[1.0.0]. Evidence gallery-* kept until deleted by the cleanup (RELEASE.md conditions to write). Next: Preview and echo from the accepted gallery (10.a bis), echo_review_sha invalidated.

mountPreview 2026-11-17 (10.a, 10.a bis): proposed decision KEEP for Art/Preview-source.png, the echo (Art/echo-concept.png, conceptual) and Preview.config.json: Preview validated by Virginie 2026-11-06 and committed, not reopened for taste (AUDIT 10.a). Mod/About/Preview.png is byte-identical to Art/Gallery/0-preview.png. Waiting for her confirmation before writing echo_review_sha. 10.f: the GitHub social preview uploaded 2026-10-25 (sha adf5f0ce...) is older than the Preview rendered 2026-11-06 (sha256 now e319feb1...): upload to redo by Virginie (Settings, Social preview).

Decision 2026-11-17 (Virginie: "Oui, garder"): KEEP Art/Preview-source.png, echo (Art/echo-concept.png) and Preview.config.json; echo_review_sha written (07bc36a). 10.d checked: Preview 896x504, 415 KB, byte-identical to Art/Gallery/0-preview.png, validated 2026-11-06. 10.e: Art/ holds only the allowed set. 10.f pending: GitHub social preview to re-upload by Virginie (sha256 now e319feb138d13b340f7710ac10eec89d5630d02c412bfb8b8ffd515f8fe0f2f7).

Social preview re-uploaded 2026-11-17 through Chrome (GitHub Settings, Social preview) from Mod/About/Preview.png; the setting page shows the current Preview after a reload. The og:image tag was not checked (the DOM of the repo page carries no meta tag in this browser). social_preview_sha256: e319feb138d13b340f7710ac10eec89d5630d02c412bfb8b8ffd515f8fe0f2f7
10.f done, 10.g: workflow_stage writeReleaseDocs[1.0.0].

writeReleaseDocs 2026-11-17 (11.a to 11.k): 11.a/b description unchanged (structure, Thanks, GitHub link checked); 11.c About.xml description rewritten from PUBLICATION.md with sync-about-description.mjs --write (wording sync only), still ends with the plain "Source code on GitHub (url)" line, so Check-ModBasics warns about the BBCode form (same on Megafauna, the template copy in .github is not mine); 11.d every named mod linked; 11.e PUBLICATION.md gallery table and order aligned; 11.f CHANGELOG [Unreleased] kept until the dry-run; 11.g adult boxes: none, all six gallery images opened; 11.h thanks drafted for the 1.0 line (thanks_drafted_line: 1.0): purpleyam 2388053651, Mlie 3602926791 (with Helixien), lordfelix 3760821540, Trickity 2559958496 (check the author's name on the page), registry rows drafted, 18 posted rows now cover this mod (WORKSHOP_COMMENTS.md, 6c71ac3); ATTRIBUTION.md gained the gallery mods table with every Workshop id of the gallery map (copied to Mod/ATTRIBUTION.md); 11.i Steam note rewritten as a real BBCode list with a CHANGELOG link, no version number in it. 11.j owner reread of PUBLICATION.md and CHANGELOG.md pending. Not done: GALLERY-PROPS.md entries (11.k), left for the closing pass.

CI refresh 2026-11-17 (CI/CD via TM, template stamp d20db370c66b): .github and Tests/Test-Mod.ps1 committed by path and pushed; Tests/Test-Mod.ps1 run: 5 passed, 0 failed, 0 skipped. Any earlier dry-run is void: the 12.e dry-run is redone without --tags, and its tag set is read next to the page's. A real publish needs STEAM_REFRESH_TOKEN on steam-production (Virginie's secret).

11.j 2026-11-17 (Virginie: "je valide"): PUBLICATION.md and CHANGELOG.md reread and validated at fc3c332; publication_changelog_review_sha written. 11.k left: GALLERY-PROPS.md entries, no gameplay Pickle step identified. Next: 12.a to 12.h.

11.k 2026-11-17: GALLERY-PROPS.md updated in the protocols repo (bcd13d6): row for this mod, Hat Hair Control (lordfelix.HatHairControl, seed needed), T's Samurai Faction (TSFApparel_StrawHat). No gameplay Pickle step: the mod is a texture patch covered by features 01 to 07. 11 closed. Open for 12.a: code_review_sha stale (About.xml description sync since 3e6fc642); STATUS.md 70 KB (journal move to docs/runs/); protocols changed since c6360704 (AUDIT.md, USE_THIS_INSTEAD.md), to reread before Mark-ProtocolsRead.

Protocols reread 2026-11-17 (AUDIT 14.h and USE_THIS_INSTEAD.md changed since c6360704): as a Renew mod this one needs a `drafted` row in docs/USE_THIS_INSTEAD.md and a BBCode comment in PUBLICATION.md right after the first public upload (13.b); the owner posts it, the row turns `posted` before leaving postOnSteam (14.h). Old data: Colorful Coats - Dodos! 2388053651, purpleyam, purpleyam.colorfulcoats.hlxdodo, versions from the original About.xml.

12.a 2026-11-17: code review of 3e6fc642..c8f060cb (Mod/ only, no Source/): Patches/ and Textures/ unchanged since the reviewed commit; About.xml diff is the description wording (synced from PUBLICATION.md) and OptionalCompat.xml (85c25c6, 2026-11-07, three ReGrowth package ids, same as loadAfter, Check-OptionalCompat OK); Mod/ATTRIBUTION.md is documentation. No defect, no behaviour change, so no playTests replay. code_review_sha set. 12.b: modDependencies, incompatibleWith and loadAfter unchanged since the declaration; OptionalCompat.xml included, no new DLC.

Journal move 2026-11-17 (12.c): closed remaining entries and dated sections folded verbatim into docs/runs/status-journal-2026-11-17.md; STATUS.md back under 40 KB. visibility corrected from `silent` to `public` (licence keeps `silent`).

12.c bis 2026-11-17: caveman compression of TESTING.md, Docs/BACKLOG.md, Tests/Pickle/README.md (prose only; identifiers, paths, numbers, dates, inline code checked identical; backups kept outside the repository). Skipped: Docs/PROTOCOLS-READ.md (SHA log, backup name collision), Docs/review-refusals.md (read by the review-translation plugin), STATUS.md body (already terse, SHAs and dates). Not touched: README, PUBLICATION, CHANGELOG, ATTRIBUTION, TRANSLATION_REVIEW.

12.e 2026-11-17: CHANGELOG [Unreleased] became [1.0.0] - 2026-11-17 (3ae7273). First dry-run (run 44129105574, update_preview/description/title on) failed: no "### 1.0.0" heading in PUBLICATION.md; fixed (b296849). Dry-run without --tags, run 44129302103, SHA b296849723ef8b49a907f3c4a5e9adf2604faf30, version 1.0.0, green.
12.f 2026-11-17: dry-run note READ, not only the green tick: SHA and version printed; About.xml description = plain text of PUBLICATION.md; staged 29 files 0.64 MB (About 5, ATTRIBUTION.md, LICENSE, Patches 1, Textures 21; no Art/, no Assemblies); change note [b]1.0.0[/b] with a [list] and the CHANGELOG link; preview sha256 e319feb1... = Mod/About/Preview.png; description 2932 chars sha256 70815a8f...; title "Colorful Coats - Dodos! Renew (unofficial)"; tags to send (the whole set) Mod, 1.6; "public page not readable (no public details for item 3806766249): comparisons skipped" because the item is still private, so the tag set could not be read next to the page's; gallery 7 files in Art/Gallery uploaded by hand by Virginie (the workflow does not send it); "DRY RUN: nothing was sent to Steam". Options planned for the publish: update_preview, update_description, update_title all true (first public upload; the page still holds the 0.1.0 text). Rollback target: none, first release (a later fix publishes a higher version from the last good SHA). Real publish needs STEAM_REFRESH_TOKEN on steam-production (Virginie); the Steam item stays private until she switches it public after subscribing to it (13.b).
12.h 2026-11-17: workflow_stage publish[1.0.0], Mark-ProtocolsRead run, session renamed. The dry-run is redone on this final commit, since any commit changes the SHA.

12.h final dry-run 2026-11-17: run 44129580982 on cbf6f953096cefaad863968d308828d991504ad7 (the commit that sets publish[1.0.0]), green, same note as run 44129302103. Publish with ref = that full SHA, version 1.0.0, update_preview, update_description, update_title true. Open for Virginie: STEAM_REFRESH_TOKEN on steam-production, approve the run, then (after the first upload) Required items on the Steam page by hand (ReGrowth: Extinct Animals (Continued) 3602926791), then workshop_required_items: done, <date>; gallery upload by hand (Art/Gallery, 0 to 6); 13.b subscribe test, then public.

13.a/13.b 2026-11-17: PUBLISHED to Workshop item 3806766249 (private): publish run 44132008799 of cbf6f953096cefaad863968d308828d991504ad7, version 1.0.0, update_preview/description/title on, approved by Virginie; steamcmd upload Success; tags set and read back from Steam: Mod, 1.6; tag v1.0.0 and release created by the CI on cbf6f95 (jobs publish and tag-and-release green). An earlier stray publish run (44130172450, 16:49) was cancelled at Virginie's word before any approval. PublishedFileId.txt already committed (3806766249). Open: subscribe test by PiI (SUBSCRIBE-TEST), Required items on the Steam page by hand (3602926791) then workshop_required_items: done, gallery upload by hand, Use This Instead row drafted (docs/USE_THIS_INSTEAD.md) and comment drafted in PUBLICATION.md, collection list in PUBLICATION.md, switch to public by Virginie (13.c), thank-you comments after.

13.b 2026-11-17: Virginie reports "required ok, gallery ok, abonnement ok" (subscribe test, item subscribed from her account) and "subscribe ok". workshop_required_items: done, 2026-11-17 (ReGrowth: Extinct Animals (Continued) 3602926791 set as Required item by hand). Gallery of 7 images (0 to 6) uploaded by hand. PiI SUBSCRIBE-TEST? message still queued: its answer, if it comes, only confirms. Owner nota (about the comments, not the gallery): when posting a comment on a Steam page, switch the comment box to the plain panel (plain text, so the BBCode links go through). Open: switch to public by Virginie (13.c), collection, Use This Instead and thank-you comments posted by her, then startWatch[1.0.0].

13.c 2026-11-17: Virginie switched the item public ("public ok"); Steam API GetPublishedFileDetails now returns the title "Colorful Coats - Dodos! Renew (unofficial)" (was unreadable while private). workflow_stage startWatch[1.0.0] (14.f): GitHub watch, Workshop comment notifications, collection RimWorld through Nelim's eyes (3815982565, by Virginie only; list in PUBLICATION.md), subscription test done (13.b). Then postOnSteam[1.0.0] (14.g): thank-you comments x4 and Use This Instead comment (plain panel), row to posted.
