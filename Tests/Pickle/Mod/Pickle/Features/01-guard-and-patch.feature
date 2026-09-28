Feature: the coats reach the dodo's definition

  # TESTING.md scenario A, the half a definition can answer. The failure this port exists to fix
  # writes nothing: PatchOperationFindMod matches a mod's display name, and a guard that matches
  # nothing skips its branch without a log line. "was patched by mod" is the step that sees it.

  Scenario: the target pack is running and loads before this mod
    Then mod "Mlie.ReGrowthExtinctAnimals" is loaded
    And mod "nelim.colorfulcoats.dodos" loads after "Mlie.ReGrowthExtinctAnimals"

  Scenario: the dodo's kind exists
    Then def "RG_Dodo" of type "PawnKindDef" exists

  Scenario: this mod's patch, and not another's, changed the dodo
    # The step takes the mod display name, as the game reports it: not the packageId.
    Then def "RG_Dodo" was patched by mod "Colorful Coats - Dodos! Renew (unofficial)"

  Scenario: the patch really applied, with the documented chance
    # "RG_Dodo" is a ThingDef and a PawnKindDef, so Pickle's own field step refuses it: name the kind.
    Then Nelim's Pickle Tools: the pawn kind "RG_Dodo" keeps 7 alternate graphics at a chance of "0.8"
