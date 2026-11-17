# In-game scenarios, run by Pickle

Companion mod **Colorful Coats - Dodos! Renew - Pickle tests** (`Mod/`), never published. Features only, no assembly: every step Pickle's own or PickleTools'. Lives outside `Mod/`, so Steam never gets it.

## Scope, and what is not here

Kept in Gherkin because only running game answers it: guard matched (definition patched by this mod), game's content holders serve 21 textures and no other mod took path, load clean. Everything a file can prove stays in `scripts/Check-Mod.ps1`.

**Spawn and reload** (`04-`, `05-`) use `PickleTools/CoatSteps`, shared with other Colorful Coats ports: TESTING.md B (different coats among spawned adults, one `@review` capture) and C (coat renderer draws survives save + reload). Both green 2026-09-28 (minimal pass, 29/29, `docs/runs/2026-09-28.txt`).

**Not automatable here:** D and E (add/remove mod in existing save). Need two launches of one save with different mod sets; harness stages one set per launch. Also game's reading of saved index against changed list, which mod declares nothing about. Stay unverified; About and README claim "safe to add or remove" stays claim until someone plays them. `done -> tested` needs (AUDIT.md, 2026-10-02): no `@wip` scenario (none today), every conditional scenario run (incompatibility pass below), no manual test left to validate: D and E must be played or listed not applicable with reason.

## Pass matrix

| Pass | Map | Status |
|---|---|---|
| Minimal | `wsl-deps.sans-facultatifs.map` | green, 29/29, 2026-11-06 (ticket cf88, features 01-05; 09-28 was request 1193) |
| Optional integration | none: no optional gameplay integration | not applicable |
| Declared incompatibility `purpleyam.colorfulcoats.hlxdodo` (Workshop 2388053651) | `wsl-deps.incompat-hlxdodo.map`, `06-incompat-hlxdodo.feature` | green 4/4, 2026-11-06 (ticket 73d0); asserts shared texture path, patch still applied, no errors |
| DLC absent | none: no DLC referenced | not applicable |
| English and French | none: mod owns no in-game text (STATUS.md, 2026-09-13) | not applicable |
| Restart sequence | none until save scenarios exist | pending |

## Run

Shared harness only, never by hand (`AUDIT.md`): submit request with `Submit-PickleRun.ps1`, `-Mod ColorfulCoatsDodosRenew -DepMap wsl-deps.sans-facultatifs.map`, commit SHA in `-Label`.

## Evidence to keep

Per pass, one run, latest for repo revision: `summary.md`, `summary.json`, `junit.xml` (read `exitReason` first, then discovered vs played), `Player.log` if launcher kept one, and single `@review` capture of `04-coats-on-spawn` (opened and looked at), kept as 1280x720 JPEG, not 1920x1080 PNG. Drop `report.html`, `messages.ndjson`, any other capture: stale build's files prove nothing. All under `Tests/Pickle/Evidence/<run>/` on disk, gitignored, never committed; history = one line per run in `docs/runs/`. Delete report once newer one for same revision replaces it; never one `STATUS.md` still names (repoint first). Launcher archives in `pickle-reports-archive/`: take what this mod needs from its own run's archive, then delete that archive (leave others, and any marked `keep.txt`).