# Backlog (after release)

## Support other dodos: DodoRex and Saroodles Additions

Added 2026-11-13 (Virginie). Source: PiI Steam ecosystem study, docs/inventory/ecosystem-steam/ColorfulCoatsDodosRenew.md (protocols).

Patch only touch `RG_Dodo` (ReGrowth: Extinct Animals). Two other mods have dodo, may want our coats:

- DodoRex (Workshop 3828845619): separate dodo race, not recolour.
- Saroodles Additions (Workshop 3304952925): has dodo defName; unknown if redefines `RG_Dodo`, adds own dodo, or patches ReGrowth's.

**To check first:** read both mods' dodo defs (graphics, texPaths, `alternateGraphics`), then pick one per mod (Audit item 24): (a) ask author add our package id, nothing outward before Virginie's go; (b) ship own patch gated on their id, declared in `Mod/About/OptionalCompat.xml`; (c) declare incompatible. After release only: minimal pass + gallery first.

**Read 2026-11-13 (Saroodles, 3304952925, packageId `Saroodles.SaroodlesAdditions`):** dodo = own `PawnKindDef` `Dodo` (race `Dodo`), not `RG_Dodo` → our patch never touch it. Already ships `alternateGraphics` (DodoB twice, C, D, E at chance 0.30) with own sprite set in `Textures/Things/Pawns/Animals/Dodo/`. Our 21 PNGs = recolours of ReGrowth dodo sprite, won't fit. Support = new art on their sprite: feature, low value; lean (c) no support, or (a) nothing. DodoRex (3828845619): not read, unsubscribed by PiI; read from fresh download before deciding.