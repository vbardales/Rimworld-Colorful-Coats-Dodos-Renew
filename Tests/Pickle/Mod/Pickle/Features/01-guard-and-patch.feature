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
    Then def "RG_Dodo" was patched by mod "nelim.colorfulcoats.dodos"

  Scenario: the patch really applied, with the documented chance
    Then def "RG_Dodo" field "alternateGraphicChance" is "0.8"
