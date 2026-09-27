# Protocols read for this mod

Not versioned advice, a log: which shared protocol was actually opened for an audit of this
repository, at what fingerprint, and whether it changed anything. A session picking this mod
back up checks the fingerprint before re-reading a whole document that may not have moved.

| Document | Read on | SHA-256 (first 12) | Useful this pass? |
| --- | --- | --- | --- |
| `../AUDIT.md` | 2026-09-28 | `e85f1285099d` | Yes — the whole gate sequence, the 0.1.0/CHANGELOG rule, the DDS-in-`Mod/` reasoning. |
| `../AGENTS.md` | 2026-09-28 | `36631e730433` | Yes — confirmed the ordered-gates rule and the CI-publishing boundary; nothing in it was specific to this mod. |

## Not opened this pass, and why

`AUDIT.md` states its own criteria supersede the linked documents on divergence, and this mod's
delivered content (patch, textures) has not changed since the 2026-09-13 audit that already
worked through each of these in depth. Re-opening them added nothing today:

- `MOD_SETTINGS.md` — the settings gate was resolved 2026-09-13 (`settings_audit: not_applicable`,
  full inventory in `STATUS.md`). `Mod/Patches/ColorfulCoats_HlxDodo.xml` still hashes to
  `3229f81d3345…`, the same file that audit read: nothing to re-verify against.
- `TRANSLATIONS.md` — same reasoning; the localization audit is dated the same day, against the
  same patch hash, and found zero owned in-game strings.
- `STYLE_RIMWORLD.md`, `WORKSHOP_COMMENTS.md`, `scripts/SEARCHING.md` — no naming, no Steam
  comment, and no repository search was done this pass that would call for them.
- `PickleTools/README.md`, `PickleTools/Headless/README.md`, `PickleTools/docs/steps.md` — this
  mod has no `Tests/Pickle/` suite. Writing one is real outstanding work (see `STATUS.md`,
  `remaining`), not something this pass did; these get opened when that work starts.
- `Rimworld-Release-Admin/docs/OPERATIONS.md` — no CI workflow, tag, release or Steam secret was
  touched. Only a pre-publication `PublishedFileId.txt` was committed, which `AUDIT.md` itself
  describes in full (§11); the CI publish document was not needed for that.
- `Rimworld-Ticket-Dispatcher/docs/WELCOME.md`, `.../SUBMIT.md` — no Pickle run was requested;
  this mod owns no ticket.

Re-open any of the above as soon as its subject becomes live work here, regardless of what this
table says — a fingerprint match only means the *document* has not moved, not that it stays
irrelevant forever.
