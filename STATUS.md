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
workflow_stage: playTests[1.1.0]
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
tested_on:    2026-11-17, runNoRegression on v1.0.0 (cbf6f95): minimal 01-05 29/29 (553d), 06 incompat 4/4 (457f), 08 removal 2/2 (c000); Docs/runs/2026-11-17-noreg-*.txt. 07 gallery not replayed (verdict given). D, G, H not applicable
workshop:     3806766249, published 1.0.0 (2026-11-17, run 44132008799), public, collection and comments done
remaining:
  - 1.1.0 (1.7 pass, owner 2026-11-17): diagnostic tickets on 1.7 (minimal 01-05, 06 incompat, 08 removal; English only), tested_1_7 to record. After a green 1.7 run only: `<li>1.7</li>` in supportedVersions, version 1.1.0, CHANGELOG, Preview badge (Render-Preview.cjs), publish with update_tags. No <li>1.7</li> before.
session:      local_32d9446b-5748-439e-ba33-43f48c0f4da4, registered with the Ticket Manager (2026-11-17)
updated:      2026-11-17, cleanUp (14.c): STATUS body, PUBLICATION.md posted texts, TESTING.md E folded; journal in docs/runs/status-journal-2026-11-17.md
protocols_read_sha: cc55569852194a8668047613f1fe6a2966b350c3
code_review_sha: c8f060cb365a32d3cd138a66b67d9730441746a2
echo_review_sha: 07bc36ab056ee29c09608d81ce878b3f0405224a
publication_changelog_review_sha: fc3c332b5c868c1080f1e7f914f209f5383c43eb
thanks_drafted_line: 1.0
social_preview_sha256: e319feb138d13b340f7710ac10eec89d5630d02c412bfb8b8ffd515f8fe0f2f7
---
# Colorful Coats - Dodos! Renew: status

Current state only. Dated history: `Docs/runs/status-journal-2026-10-16.md` and `Docs/runs/status-journal-2026-11-17.md` (the latter holds the previous body of this file, verbatim).

- **Published**: 1.0.0, 2026-11-17, Workshop item 3806766249 (public, tags Mod, 1.6), tag v1.0.0 (cbf6f95). Subscribe test OK (PiI). Required item ReGrowth: Extinct Animals (Continued) 3602926791 set by hand. Collection and the five Steam comments done by Virginie.
- **What it is**: texture patch, seven coats for `RG_Dodo`, no assembly, no own def. Settings, localization, translations: not_applicable.
- **Licence**: MIT for port additions only; original coats, chances and 21 textures by purpleyam, no declared licence (`silent`). Mod title ends `(unofficial)`.
- **Dependencies**: required `Mlie.ReGrowthExtinctAnimals` (3602926791, patch target); incompatible `purpleyam.colorfulcoats.hlxdodo`; loadAfter and optional integrations the three ReGrowth packages (`OptionalCompat.xml`); no DLC, no Harmony.
- **Tests**: see `tested_on`; `TESTING.md` holds the scenarios, A, B, C, F played, D, G, H not applicable, E (removal) played with `-ThenWithout` as an array of two ids.
- **Gallery**: six accepted images, subtitled, `Art/Gallery/` 0 to 6 (table in `PUBLICATION.md`), unsubtitled in `Art/Gallery-clean/`. Preview and echo kept (echo_review_sha), social preview re-uploaded 2026-11-17.
- **NSB**: Nelim mouth `MouthLipsSimpleSmile` validated 2026-11-07; enclosure-south and barn validated; rules said back 2026-11-13. Places and tribe read 2026-11-17, steps read 2026-11-17.
- **Ecosystem** (PiI 2026-11-13): no other dodo recolour; DodoRex 3828845619 and Saroodles Additions hold other dodos, not supported (`Docs/BACKLOG.md`).
- **Review shas**: code_review_sha, echo_review_sha, publication_changelog_review_sha in the front matter.
- **Register rows**: WORKSHOP_COMMENTS.md (4 thank-yous) and USE_THIS_INSTEAD.md (this mod) `posted`; texts in `Docs/runs/posted-comments-2026-11-17.md`.

14.c/14.d 2026-11-17: Tests/Pickle/Evidence emptied (11 folders, no RELEASE.md condition; summaries in Docs/runs), Inbox 0, Parked 0. WSL checked: ids 2388053651 (original purpleyam) and 3602926791 (ReGrowth Continued), the only ids no other mod's map names, are not in ~/workshop-cache nor ~/rimworld/Mods: nothing to remove. Owner may unsubscribe from the original 2388053651 (this port replaces it); ReGrowth stays (required item). 14.d: only branch is main, origin/main = HEAD, Mod/ unchanged since v1.0.0 (cbf6f95).

14.e 2026-11-17: workflow_stage dormant[1.0.0] (last published version kept). Check-Status 0 error, protocols read. A fix or a new game version reopens the chain at code[x.y.z].

1.7 pass 2026-11-17 (Virginie: "prepare une 1.1.0 en 1.7"): chain reopened from dormant[1.0.0] at playTests[1.1.0] (target version 1.1.0, tag 1.7 = minor). Mod/ unchanged since v1.0.0 (cbf6f95), supportedVersions still 1.6. Three 1.7 diagnostic tickets (-Game /home/nelim/rimworld17) on tree 0ba5120 plus this commit; PiI note: ReGrowth 2 parent is 2260097569 (ReGrowth.BOTR.Core, 1.5 1.6 1.7).

1.7 pass 2026-11-17: three diagnostic tickets filed on tree 935f960 (-Game /home/nelim/rimworld17, English): 33e9 (minimal 01-05, wsl-deps.sans-facultatifs.map, Inbox/diag17-minimal), 77f7 (06 incompat, wsl-deps.incompat-hlxdodo.map, diag17-incompat), 4798 (08 removal chain, -ThenWithout array, wsl-deps.removal.map, diag17-removal). At each RUN_DONE: summary.json, junit.xml, then tested_1_7 (yes, or no with the log error in Docs/runs). Mod/ stays frozen until the three are back.

1.7 pass 2026-11-17: RUN_DONE 33e9 (diag17-minimal, 01-05): exit 0, exitReason passed, 29 of 29 passed, game RimWorld 1.7.4976, summary.json and junit.xml read. Docs/runs/2026-11-17-diag17-minimal.txt, evidence moved to Tests/Pickle/Evidence/diag17-minimal. Waiting for 77f7 (06) and 4798 (08).
