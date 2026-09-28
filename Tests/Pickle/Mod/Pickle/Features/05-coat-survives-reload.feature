@requires:nelim.pickletools.coatsteps
Feature: a dodo keeps its own coat across a save and reload

  # TESTING.md scenario C. Pawn.overrideGraphicIndex is what records the coat and it goes into the
  # save. A coat that moved to another bird, or was drawn again, would reshuffle the pen on every load.

  Background:
    Given the save "test-colony" is loaded

  Scenario: each dodo has the coat it had before
    Given Nelim's Pickle Tools: 20 adult animals of kind "RG_Dodo" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When Nelim's Pickle Tools: I note the coats of the animals of kind "RG_Dodo"
    And I save and reload
    Then Nelim's Pickle Tools: each animal of kind "RG_Dodo" still has the coat noted for it
    And no errors were logged
