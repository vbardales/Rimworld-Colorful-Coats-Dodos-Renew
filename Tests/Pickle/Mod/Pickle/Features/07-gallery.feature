@requires:nelim.pickletools.coatsteps
Feature: Workshop gallery captures

  # Captures for the Workshop page, not assertions: a person opens each image (AUDIT.md, "Captures destinees a la
  # publication"). The scene is built by the scenario, on the test colony, with the interface left to the game's
  # own capture frame: developer mode off so the toolbar stays out of the shot, birds packed within four cells and
  # framed. Order and what each image must show are in PUBLICATION.md.

  Background:
    Given the save "test-colony" is loaded

  # Image 1: the point of the mod in one frame, a flock of mixed coats.
  @review @gallery
  Scenario: a flock in many coats
    Given Nelim's Pickle Tools: 14 adult animals of kind "RG_Dodo" are spawned close together
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 4 different extra coats were drawn
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "RG_Dodo"
    And I take a screenshot "gallery-1-flock"

  # Image 2: a smaller group, so each bird is large enough to read its own coat.
  @review @gallery
  Scenario: a small group, coats readable one by one
    Given Nelim's Pickle Tools: 7 adult animals of kind "RG_Dodo" are spawned close together
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "RG_Dodo"
    And I take a screenshot "gallery-2-group"
