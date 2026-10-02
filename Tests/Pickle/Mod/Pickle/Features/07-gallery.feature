@requires:nelim.pickletools.screenshotmode
@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.stagedecor
@requires:nelim.pickletools.camerazoom
Feature: Workshop gallery captures

  # Staged photographs, not assertions (rule of 2026-10-02, PickleTools/docs/STAGING.md): a person opens each image.
  #
  # The story of the series: a dodo keeper's yard at midday. The birds hatched in more colours than the pen was
  # built for, so the keeper swept a gravel yard, put a lamp at each end and a fire at the back, and let the flock
  # out to be counted. Every image shares that set; the decor is placed, photographed, and taken away again by the
  # StageDecor step (which also runs after every scenario).
  #
  # Cells are the author's arithmetic: the test colony's map is 250 x 250, so its centre is (125, 125). The flock is
  # spawned around that cell, the yard is the 15 x 15 square around it, and the roof is lifted from a wider square
  # because the colony sits under a mountain roof. The decor defs are vanilla 1.6 names that Pickle Tools has not
  # played yet; a "cannot place" failure names the cell and says which def to swap.

  Background:
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the roof is removed from (112, 112) to (138, 138)
    And Nelim's Pickle Tools: I lay the floor "Gravel" from (118, 118) to (132, 132)
    And Nelim's Pickle Tools: I place the decor "StandingLamp" at (118, 125)
    And Nelim's Pickle Tools: I place the decor "StandingLamp" at (132, 125)
    And Nelim's Pickle Tools: I place the decor "Campfire" at (125, 132)
    And Nelim's Pickle Tools: the decor "Campfire" at (125, 132) is lit

  # Image 1: the whole flock in the yard, many coats in one frame.
  @review @gallery
  Scenario: the flock in the keeper's yard
    Given Nelim's Pickle Tools: 14 adult animals of kind "RG_Dodo" are spawned around (125, 123)
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 4 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the cells (118, 118) to (132, 132) filling 85 percent of the screen
    And I take a screenshot "gallery-1-flock"

  # Image 2: the same yard, closer, seven birds, so each coat reads on its own.
  @review @gallery
  Scenario: a few birds up close, each coat readable
    Given Nelim's Pickle Tools: 7 adult animals of kind "RG_Dodo" are spawned around (125, 125)
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the cells (121, 121) to (129, 129) filling 80 percent of the screen
    And I take a screenshot "gallery-2-group"
