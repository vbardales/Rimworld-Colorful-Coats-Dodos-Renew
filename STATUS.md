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
workflow_stage: publish[1.1.0]
tested_1_7: yes
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
  - 1.1.0 (1.7 pass): dry-run on the commit that sets publish[1.1.0] (options: update_preview only), read the note (12.f), then dispatch-publish.sh with that full SHA, Virginie approves steam-production; after: PublishedFileId check, SUBSCRIBE-TEST? to PiI, tag v1.1.0, collection untouched (item already in), Workshop tag 1.7 read back.
session:      local_32d9446b-5748-439e-ba33-43f48c0f4da4, registered with the Ticket Manager (2026-11-17)
updated:      2026-11-17, cleanUp (14.c): STATUS body, PUBLICATION.md posted texts, TESTING.md E folded; journal in docs/runs/status-journal-2026-11-17.md
protocols_read_sha: ab437501baa79c4bfbd996f1f2b61bc89ab0bf7a
code_review_sha: e0d7d4b8e1f2d1e138c3524fb2ea3f0fac496675
echo_review_sha: 1f531ffe65a61834e573f28988bc70a90b023e1f
publication_changelog_review_sha: 7c32007d450f9a84857b91c4fb1a76627f6b5c67
thanks_drafted_line: none
social_preview_sha256: 6d0bd069c32bca1f378d4145d771c042d1458fa39c8f6ff26c34d6f5ad773fc8
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

1.7 pass 2026-11-18 (tested_1_7 yes; 2026-11-18, game 1.7.4976, tree 935f960: minimal 01-05 29/29 (33e9), 06 incompat 4/4 (77f7), 08 removal 2/2 (4798); Docs/runs/2026-11-17-diag17-minimal.txt, 2026-11-18-diag17-incompat.txt, 2026-11-18-diag17-removal.txt): RUN_DONE 77f7 (diag17-incompat, 06): 4 of 4 passed, exit 0. RUN_DONE 4798 (diag17-removal, 08): E1 and E2 passed, exit 0, both launches. summary.json and junit.xml read for each. Docs/runs/2026-11-18-diag17-*.txt, evidence moved to Tests/Pickle/Evidence, Inbox 0. tested_1_7: yes. Mod/ still unchanged since v1.0.0 (cbf6f95), supportedVersions still 1.6.

1.7 declared 2026-11-18 (Virginie: go): supportedVersions 1.6 + 1.7, CHANGELOG [Unreleased] Added/Changed, Preview and Art/Gallery/0-preview.png rendered with the 1.7 badge (config unchanged, badge top right read, echo and title unclipped).

2026-11-18: 10.f social preview re-uploaded through Chrome (Preview.png with 1.7 badge, shown on the settings page; og:image not read back), sha256 recorded. Stage writeReleaseDocs[1.1.0] (10.g). Gallery unchanged, Art/Gallery/0-preview.png byte copy of the new Preview.

2026-11-18 reviews: code review of c8f060cb..e0d7d4b8: Mod/ diff is one line, `<li>1.7</li>` in About.xml (plus the Preview PNG, not code); backed by the green 1.7 diagnostic on 1.7.4976, no defect, code_review_sha set. Echo: kept, only the corner badge changed (rendered Preview opened, echo and title unclipped), echo_review_sha set.

2026-11-18 11.j: Virginie read PUBLICATION.md and CHANGELOG.md for line 1.1 ("OK, relu"), publication_changelog_review_sha set to 7c32007d.

12.e/12.h 2026-11-18: CHANGELOG [Unreleased] became [1.1.0] - 2026-11-18; 12.c bis docs minify skipped (every target already caveman-compressed and unchanged since v1.0.0 except a 2-line TESTING.md edit); workflow_stage publish[1.1.0], Mark-ProtocolsRead run.

12.e/12.f 2026-11-18: dry-run run 44299711718 on 661eeca2257af6d1c14a51598488123d1556060b (the commit that sets publish[1.1.0]), version 1.1.0, options update_preview only, green, "DRY RUN: nothing was sent to Steam". Note READ in the log, not only the green tick: change note 1.1.0 prints as written (two items, changelog link); staged 29 files 0.64 MB (About 5, Textures 21, no Art/, no Assemblies); preview 8e5d5269 414871 bytes would replace the page image (page: e319feb1 415308 bytes); description and title not sent; tags to send Mod, 1.6, 1.7 (page: Mod, 1.6; added 1.7, none removed). Gallery 0-preview.png changed (byte copy of the new Preview): manual page update at postOnSteam (14.h).

13.a 2026-11-18: dispatch-publish.sh sent publish run 44299920213 (ref 661eeca2257af6d1c14a51598488123d1556060b, version 1.1.0, update_preview), waiting for Virginie to approve steam-production.

13.a 2026-11-18 CANCELLED: publish run 44299920213 cancelled before approval (Virginie asked to redo the Preview with a regenerated palette and a plain panel; the dry-run 44299711718 is void, a new Preview means a new SHA and a new dry-run). Preview redone: palette regenerated from Preview-source.png (veil #594C39 to #5C4315 from the OKLCH rule L 0.40 C 0.07 H 79, inkPrimary #F2ECE1 to #F4EEE4, inkSecondary #F4C978 to #F1C681, badgeInk #17120E to #161107, accent #639DEB kept: the source holds only one hue family, ochre, so the accent is the blue of the dodo coats and the echo), panel.panelBare true (no veil, no border). Contrast of inkPrimary on the source under the text, measured: title zone median 5.03 (p90 4.33), description zone median 4.58 (p90 3.84, the log at the right of the description is the bright spot): under the 5:1 margin of STYLE_RIMWORLD for panelBare, above the 4.5 floor at the median; rendered and committed, flagged to Virginie. Next: her validation of the image, social preview re-upload (new sha256 5dc1398d), new dry-run, publish.

Preview 2026-11-18 (Virginie: ModIcon to the left): Art/Preview.config.json icon.corner "bottom-left" added (default was bottom-right); the automatic title fit now gives 2 lines, the panel is shorter. Rendered, opened, committed. social_preview_sha256 stale again, to re-upload after her validation.

Preview 2026-11-18 (Virginie: new Preview-source): prompt written with New-PreviewPrompt.mjs in Docs/PROMPT_ColorfulCoatsDodosRenew.md (main palette reference 3-seven-coats; references 5-golden-hour, 1-dawn, panel zone left 58 percent by 78 percent, seven coats on the right 40 percent). Waiting for her image. After it: Art/Preview-source.png replaced, palette redone (a bis), echo review redone (echo_review_sha ERROR until then), render, social preview re-upload, new dry-run, publish. Protocols diffs read 2026-11-18 (rate-gallery is typed by Virginie, bare negative block, cleanUp optional between versions), Mark-ProtocolsRead run.

Preview 2026-11-18, new Preview-source.png (1672x941, from Docs/PROMPT_ColorfulCoatsDodosRenew.md): seven dodos in seven coats on the right 40 percent, left zone calm and even. Palette redone (a bis) from it: dominant family red-orange (0: 85 percent), zone mean oklch L 0.40 C 0.09 H 50, veil #663B22, inkPrimary #F7ECE6, inkSecondary #FFBB93, badgeInk #190F0A, accent #5B9DDF (the blue dodo, hue 250, detaches from the orange). panelBare kept, icon.corner bottom-left kept. Contrast of inkPrimary on the source under the text: title median 8.71 (p99 7.39), description median 8.66 (p99 5.80), above the 5:1 margin everywhere. Echo kept (echo-concept, three dodos line-art, clear of the birds), echo_review_sha set to 1f531ffe. Title auto-fit chose 36 px on 3 lines (suffix inline). social_preview_sha256 stale until Virginie validates and the share image is re-uploaded.

2026-11-18: Virginie validated the new Preview (panelBare, ModIcon bottom-left, palette from the new source). Social preview re-uploaded through Chrome (new image shown on the settings page), social_preview_sha256 recorded.

12.e/12.f 2026-11-18 (redo after the new Preview): dry-run run 44304780523 on 08c261146555b03fa44553c600ee395601689655, version 1.1.0, update_preview only, green, "DRY RUN: nothing was sent to Steam". Note READ in the log: change note 1.1.0 as written; staged 29 files 0.96 MB (About 5 files 0.78 MB, ATTRIBUTION.md, LICENSE, Patches 1, Textures 21; no Art/, no Assemblies); preview 6d0bd069 735092 bytes (under 1 MB) would replace the page image (page: e319feb1 415308 bytes); description and title not sent; tags to send Mod, 1.6, 1.7 (page Mod, 1.6; added 1.7). Gallery 0-preview.png (735092 bytes) changed: manual page gallery update at postOnSteam (14.h). Replaces the void dry-run 44299711718.

13.a 2026-11-18: dispatch-publish.sh sent publish run 44304959256 (ref 08c261146555b03fa44553c600ee395601689655, version 1.1.0, update_preview), waiting for Virginie to approve steam-production.
