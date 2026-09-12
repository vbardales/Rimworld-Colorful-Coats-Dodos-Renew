---
mod:          Colorful Coats - Dodos! Renew
packageId:    nelim.colorfulcoats.dodosrenew
repo:         Rimworld-Colorful-Coats-Dodos-Renew
visibility:   public
detached:     yes
stage:        preTest
licence:      silent
licence_at:   four places, the About and the Steam page among them
dependencies: to check
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: never seen running
session:      local_1a82a4f4-4e37-4fcb-87b4-1b86d5c52392
updated:      2026-09-12, automatic sweep
---

# Colorful Coats - Dodos! Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it.

The fields above were read off the disk on 2026-09-12. Three cannot be, and wait for whoever
holds this mod:

- **`stage`** — one of `port`, `showcase`, `preTest`, `done`, `tested`, `published`. Filled in
  from the session group where one exists; confirm it.
- **`tested_on`** — the date of the last run in game. Empty means never.
- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.
- **`remaining`** — what is left, in three kinds: `feature` for something missing from a first
  release, `defect` for a known fault left unfixed, `unverified` for what could not be checked.
  The line already there is true of nearly the whole repository; replace it once it stops being.

`licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.
