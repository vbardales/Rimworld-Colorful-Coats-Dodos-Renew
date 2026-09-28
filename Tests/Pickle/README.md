# In-game scenarios, run by Pickle

Companion mod **Colorful Coats - Dodos! Renew - Pickle tests** (`Mod/`), never published. Features only,
no assembly: every step is Pickle's own or one of PickleTools'. Lives outside `Mod/`, so Steam never receives it.

## Scope, and what is not here

Kept in Gherkin because only a running game answers it: that the guard matched (a definition patched by this
mod), that the game's content holders serve the 21 textures and no other mod took the path, and that the load is
clean. Everything a file can prove stays in `scripts/Check-Mod.ps1`.

**Spawn and reload** (`04-`, `05-`) use `PickleTools/CoatSteps`, shared with the other Colorful Coats ports: TESTING.md B
(different coats among spawned adults, one `@review` capture) and C (`Pawn.overrideGraphicIndex` survives save and reload).
Those steps compile but have never run.

**Not automatable here:** D and E (add or remove the mod in a save that already exists). They need two launches of one
save with different mod sets, and the harness stages one set per launch. They are also the game's reading of a saved index
against a list that changed, which the mod declares nothing about. They stay unverified, and the About and README claim
"safe to add or remove" stays a claim until someone plays them. Until the rest is run, `done -> tested` stays unmet.

## Pass matrix

| Pass | Map | Status |
|---|---|---|
| Minimal | `wsl-deps.sans-facultatifs.map` | written, not run |
| Optional integration | none: the mod has no optional gameplay integration | not applicable |
| Declared incompatibility `purpleyam.colorfulcoats.hlxdodo` (Workshop 2388053651) | `wsl-deps.incompat-hlxdodo.map`, not written | pending: stage the original, observe its symptom, then assert it |
| DLC absent | none: no DLC is referenced | not applicable |
| English and French | none: the mod owns no in-game text (STATUS.md, 2026-09-13) | not applicable |
| Restart sequence | none until the save scenarios exist | pending |

## Run

Through the shared harness only, never by hand (`AUDIT.md`): deposit the request with `Submit-PickleRun.ps1`,
`-Mod ColorfulCoatsDodosRenew -DepMap wsl-deps.sans-facultatifs.map`, and put the commit SHA in `-Label`.

## Evidence to keep

Per pass, one run: `summary.md` and `junit.xml` (read `exitReason` first, then discovered against played), and the
`Player.log`. There is no `@review` capture, so no screenshot is worth keeping. Everything goes under
`Tests/Pickle/Evidence/<run>/` on disk, gitignored; the history is one line per run in `docs/runs/`. Delete a
report as soon as a newer one for the same revision replaces it.
