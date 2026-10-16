@requires:nelim.sanctuarybacklot
@requires:nelim.pickletools.screenshotstudio
@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.camerazoom
@requires:nelim.pickletools.colonistrace
Feature: Workshop gallery captures

  # Staged photographs, not assertions (GALLERY.md): a person opens each image. Pass: -DepMap wsl-deps.galerie.map.
  #
  # The story of the series: noon at the dodo pen of the Sanctuary (named place enclosure-south, centre (149, 214), the small
  # fenced enclosure with its nesting boxes and its green crop zone). Nelim, the keeper, has just let the flock in and
  # counts the coats: first from the gate, with the whole flock around her, then one by one, the birds lined up facing her.
  # Midday, clear sky, natural light on real ground. The whole interface is hidden by studio presentation mode.
  # Subtitles (PUBLICATION.md, "Gallery subtitles") are written under each image after acceptance.
  #
  # Shot plan (place; moment; subject; composition; what the picture says):
  #   1. enclosure-south, 12:00, the flock: 12 dodos around the middle of the pen, Nelim at the west end looking at the camera,
  #      camera root size 7 (14 cells high, about 50 px per bird), fence and nesting boxes behind. "A pen of many colours."
  #   2. enclosure-south, 12:00, the count: five dodos in a row, all facing the camera, Nelim at the left end smiling at them,
  #      camera root size 4.5 (9 cells high, about 120 px per bird), each coat readable. "Seven coats, one species."
  # Nelim: dark auburn long hair, mustard shirt over her usual trousers (a warm colour that sets off the blue, white and
  # brown coats), her own face (two brows, smirk smile, blink). The animals are spawned after the place is framed.

  Background:
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "LongOily"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (120, 50, 30)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (205, 150, 40)

  # Image 1: the whole flock in the pen, Nelim at the gate.
  @review @gallery
  Scenario: the flock in the dodo pen
    Given I wait 60 ticks
    And Nelim's Pickle Tools: 12 adult animals of kind "RG_Dodo" are spawned around (149, 214)
    And "Nelim" stands at (140, 214) facing South
    And Nelim's Sanctuary: Nelim has her own face
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 4 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (146, 214) at root size 7
    And I take a screenshot "gallery-1-flock"

  # Image 2: five birds in a row facing the camera, Nelim at the left end (GALLERY.md: Nelim is the main character, animals seen from the front).
  @review @gallery
  Scenario: a few birds up close, each coat readable
    Given I wait 60 ticks
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo1" is spawned at (146, 213)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo2" is spawned at (148, 213)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo3" is spawned at (150, 213)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo4" is spawned at (152, 213)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo5" is spawned at (154, 213)
    And the animal "Dodo1" stands at (146, 213) facing South
    And the animal "Dodo2" stands at (148, 213) facing South
    And the animal "Dodo3" stands at (150, 213) facing South
    And the animal "Dodo4" stands at (152, 213) facing South
    And the animal "Dodo5" stands at (154, 213) facing South
    And "Nelim" stands at (143, 214) facing South
    And Nelim's Sanctuary: Nelim has her own face
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (149, 213) at root size 4.5
    And I take a screenshot "gallery-2-group"
