@requires:nelim.sanctuarybacklot
@requires:nelim.pickletools.screenshotstudio
@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.camerazoom
Feature: Workshop gallery captures

  # Staged photographs, not assertions (GALLERY.md): a person opens each image. Pass: -DepMap wsl-deps.galerie.map.
  #
  # The story of the series: noon at the dodo pen of the Sanctuary (named place enclosure-south, centre (149, 214), the small
  # fenced enclosure with its nesting boxes and its green crop zone). The flock has just been let in, and the keeper counts the coats.
  # Midday, clear sky, natural light on real ground (the earlier test-colony yard was a bare gravel square under artificial light,
  # runs 2026-10-10 and 2026-10-11). The whole interface is hidden by studio presentation mode.
  #
  # Shot plan (place; moment; subject; what the picture says):
  #   1. enclosure-south, 12:00, wide: the whole flock of 12 in the pen, the fence and the nesting boxes around. "A pen of many colours."
  #   2. enclosure-south, 12:05, tight: 6 birds framed on their own (zoom 9), each coat readable. "Seven coats, one species."
  # Every dodo is spawned after the place is framed and the 5 minutes have passed, so none has left the frame.

  Background:
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And I set the hour to 12
    And I set the weather to "Clear"

  # Image 1: the whole flock in the pen.
  @review @gallery
  Scenario: the flock in the dodo pen
    Given I wait 60 ticks
    And Nelim's Pickle Tools: 12 adult animals of kind "RG_Dodo" are spawned around (149, 214)
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 4 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Sanctuary: I frame the sanctuary "enclosure-south"
    And I take a screenshot "gallery-1-flock"

  # Image 2: closer, six birds, so each coat reads on its own, five game minutes later.
  @review @gallery
  Scenario: a few birds up close, each coat readable
    Given I wait 268 ticks
    And Nelim's Pickle Tools: 6 adult animals of kind "RG_Dodo" are spawned around (149, 214)
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the animals of kind "RG_Dodo"
    And I take a screenshot "gallery-2-group"
