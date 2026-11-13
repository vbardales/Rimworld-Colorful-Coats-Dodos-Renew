# Backlog (after release)

## Support other dodos: DodoRex and Saroodles Additions

Added 2026-11-13 (Virginie). Source: PiI Steam ecosystem study, docs/inventory/ecosystem-steam/ColorfulCoatsDodosRenew.md (protocols).

Our patch only touches `RG_Dodo` (ReGrowth: Extinct Animals). Two other mods carry a dodo and may want our coats:

- DodoRex (Workshop 3828845619): a separate dodo race, not a recolour.
- Saroodles Additions (Workshop 3304952925): holds a dodo defName; unknown if it redefines `RG_Dodo`, adds its own dodo or patches ReGrowth's.

**To check first:** read both mods' dodo defs (graphics, texPaths, `alternateGraphics`), then pick one per mod (Audit item 24): (a) ask the author to add our package id, nothing outward before Virginie's go; (b) ship our own patch gated on their id, declared in `Mod/About/OptionalCompat.xml`; (c) declare it incompatible. After release only: the minimal pass and the gallery come first.
