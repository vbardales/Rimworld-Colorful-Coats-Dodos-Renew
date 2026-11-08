@requires:nelim.sanctuarybacklot
@requires:nelim.pickletools.screenshotstudio
@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.camerazoom
@requires:nelim.pickletools.colonistrace
@requires:nelim.pickletools.stagedecor
# Staged photographs, not assertions (GALLERY.md): a person opens each image. Pass: -DepMap wsl-deps.galerie.map.
# SHOTLIST of 2026-11-07, recomposed the same day after the first six captures were refused (REDO, review of tickets 5469 and e957).
# STORY. "Feeding day at the dodo pen". Nelim, keeper of the Sanctuary, spends one day with the dodo flock in the enclosure-south pen:
# she opens the gate at dawn, drops breakfast hay, tosses berries at noon, tucks the hens in at 15, herds the last bird home at 17 and
# lays the last hay in the barn at 19. One start hour per image, clear sky. Nelim (NSB canon): hair Hair_DarkSaturatedReddish rgb (56, 36, 18),
# Roo_Royal_LongHD under TSFApparel_StrawHat, mustard Apparel_BasicShirt rgb (205, 150, 40), smile MouthLipsSimpleSmile (owner, 2026-11-07).
# Indoors (6) the game takes the hat off. Fixes after the first run: bamboo cleared from the frame, hay and berries unforbidden (red X),
# coats given by name (no random draw), stray animals removed (5), carried Kibble dropped (it hid Nelim), tighter roots.
#   1. workshop-1-dawn; enclosure-south, south gate in the fence row at z 207; 8h; root 5
#        Seven dodos, one per coat, scattered in depth and facing the camera north of Nelim, who stands at (159, 209) facing South at the open gate
#        with empty hands; TorchLamp lit on both gate posts, Plant_Daylily, Plant_YellowTallGrass, DR_StickLantern lit, Stool, tall grass all round. Instant: she has just
#        pulled the gate open. Says: The pen wakes up in many colours.
#   2. workshop-2-breakfast; enclosure-south, middle (149, 214); 10h; root 3.5
#        Hay lies in a pile at (149, 214); Nelim stands at (149, 212) facing South, hands empty, smiling; five dodos (coats 0, 2, 3, 5, 6)
#        close around the pile, three facing the camera; DR_StickLantern lit, Stool, Plant_YellowTallGrass. Instant: before the first peck.
#        Says: Breakfast is served.
#   3. workshop-3-seven-coats; enclosure-south, east side (155, 216); 12h; root 3
#        Berries lie at (155, 216); the seven coats (0 to 6) packed around them, facing the pile; Nelim at (151, 216) facing East;
#        PlantPot_Daylily, Plant_Daylily, Plant_YellowTallGrass, TorchLamp lit, DR_StickLantern lit. Instant: the berries have just landed.
#        Says: Seven coats, one flock.
#   4. workshop-4-the-nest; enclosure-south, nesting boxes (138, 214); 15h; root 2.8
#        A hen (coat 4) lies asleep on a hay nest at (138, 214), the cells cleared first (a daylily stood there), with one egg beside her at (139, 213); Nelim stands at (141, 214) facing West
#        looking down at the hen; EggBox, DR_StickLantern lit, Plant_Daylily, Plant_YellowTallGrass. Instant: she has just set the egg down beside the hen.
#        Says: A quiet afternoon, one egg.
#   5. workshop-5-golden-hour; enclosure-south, west gate (139, 217); 17h; root 3.5
#        Shogun at (138, 216) faces the camera, turned back to a straggling dodo; three more dodos (coats 1, 3, 5) walk East, away from the
#        low sun; Nelim at (136, 218) behind them; TorchLamp lit, DR_StickLantern lit, Plant_YellowTallGrass; the pen emptied of other animals.
#        Instant: the straggler has just stopped. Says: The last bird comes home.
#   6. workshop-6-roost; barn, east extension (201, 238); 19h; root 3.2
#        Four dodos (coats 0, 2, 4, 6) asleep on hay, one lit Brazier; Nelim at (200, 236) facing East, hat off indoors, poker table and dining chairs hidden, smiling at them, the last
#        armful of Hay laid at (201, 237). Instant: the last bird has just settled. Says: Everyone is home.
# Interface windows: none (the mod has no settings, no menu).
Feature: Workshop gallery captures

  Background:
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (56, 36, 18)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (205, 150, 40)
    And Nelim's Pickle Tools: "Nelim" also wears "TSFApparel_StrawHat"

  # Image 1: the flock leaves the night shelter, Nelim opens the south gate.
  @review @gallery
  Scenario: workshop-1-dawn
    Given Nelim's Sanctuary: the animals are removed from the sanctuary "enclosure-south"
    And I set the hour to 8
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: the area from (150, 209) to (166, 222) is cleared
    And Nelim's Pickle Tools: a decor that finds no cell is skipped and logged
    And Nelim's Pickle Tools: the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor
    And Nelim's Pickle Tools: I place the decor "TorchLamp" exactly at (158, 208)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (158, 208) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" exactly at (160, 208)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (160, 208) is lit
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" near (163, 210)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (163, 210) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (155, 210) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (163, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (152, 212) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (165, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Stool" near (162, 210)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (152, 215) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (165, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (157, 210) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (161, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 210) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (157, 215) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (162, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (164, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (166, 212) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (155, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (160, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (151, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (153, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (164, 209) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (158, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" near (154, 209)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (154, 209) is lit
    And Nelim's Pickle Tools: I place the decor "PlantPot_Daylily" near (165, 209)
    And Nelim's Pickle Tools: "Nelim" carries 8 of the item "Hay"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (153, 211)
    And Nelim's Pickle Tools: the thing "Hay" at (153, 211) is not forbidden
    And Nelim's Pickle Tools: "Nelim" carries 8 of the item "Hay"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (165, 212)
    And Nelim's Pickle Tools: the thing "Hay" at (165, 212) is not forbidden
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo0" is spawned at (156, 213)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo1" is spawned at (159, 216)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo2" is spawned at (161, 212)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo3" is spawned at (163, 215)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo4" is spawned at (154, 216)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo5" is spawned at (158, 212)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo6" is spawned at (160, 214)
    And Nelim's Pickle Tools: the animal "Dodo0" is given coat 0
    And Nelim's Pickle Tools: the animal "Dodo1" is given coat 1
    And Nelim's Pickle Tools: the animal "Dodo2" is given coat 2
    And Nelim's Pickle Tools: the animal "Dodo3" is given coat 3
    And Nelim's Pickle Tools: the animal "Dodo4" is given coat 4
    And Nelim's Pickle Tools: the animal "Dodo5" is given coat 5
    And Nelim's Pickle Tools: the animal "Dodo6" is given coat 6
    And I wait 60 ticks
    When Nelim's Pickle Tools: the animal "Dodo0" stands at (156, 213) facing South
    And Nelim's Pickle Tools: the animal "Dodo1" stands at (159, 216) facing South
    And Nelim's Pickle Tools: the animal "Dodo2" stands at (161, 212) facing South
    And Nelim's Pickle Tools: the animal "Dodo3" stands at (163, 215) facing South
    And Nelim's Pickle Tools: the animal "Dodo4" stands at (154, 216) facing South
    And Nelim's Pickle Tools: the animal "Dodo5" stands at (158, 212) facing South
    And Nelim's Pickle Tools: the animal "Dodo6" stands at (160, 214) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (159, 209) facing South
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSimpleSmile"
    And game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (159, 212) at root size 5
    And I take a screenshot "gallery-1-dawn"
    And Nelim's Pickle Tools: the decor is removed

  # Image 2: the hay drop, five coats around the pile.
  @review @gallery
  Scenario: workshop-2-breakfast
    Given Nelim's Sanctuary: the animals are removed from the sanctuary "enclosure-south"
    And I set the hour to 10
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: a decor that finds no cell is skipped and logged
    And Nelim's Pickle Tools: the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" exactly at (154, 211)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (154, 211) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" near (152, 211)
    And Nelim's Pickle Tools: I place the decor "PlantPot_Daylily" near (145, 212)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" near (154, 216)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (154, 216) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 215) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (155, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (144, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (148, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 212) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (154, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (150, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" exactly at (156, 219)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (156, 219) is lit
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo0" is spawned at (147, 216)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo2" is spawned at (150, 217)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo3" is spawned at (152, 215)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo5" is spawned at (146, 214)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo6" is spawned at (152, 213)
    And Nelim's Pickle Tools: the animal "Dodo0" is given coat 0
    And Nelim's Pickle Tools: the animal "Dodo2" is given coat 2
    And Nelim's Pickle Tools: the animal "Dodo3" is given coat 3
    And Nelim's Pickle Tools: the animal "Dodo5" is given coat 5
    And Nelim's Pickle Tools: the animal "Dodo6" is given coat 6
    And I wait 60 ticks
    When Nelim's Pickle Tools: the animal "Dodo0" stands at (147, 216) facing South
    And Nelim's Pickle Tools: the animal "Dodo2" stands at (150, 217) facing South
    And Nelim's Pickle Tools: the animal "Dodo3" stands at (152, 215) facing South
    And Nelim's Pickle Tools: the animal "Dodo5" stands at (146, 214) facing East
    And Nelim's Pickle Tools: the animal "Dodo6" stands at (152, 213) facing West
    And Nelim's Pickle Tools: "Nelim" carries 10 of the item "Hay"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (149, 214)
    And Nelim's Pickle Tools: the thing "Hay" at (149, 214) is not forbidden
    And Nelim's Pickle Tools: "Nelim" stands at (149, 212) facing South
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSimpleSmile"
    And game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (149, 214) at root size 3.5
    And I take a screenshot "gallery-2-breakfast"
    And Nelim's Pickle Tools: the decor is removed

  # Image 3: all seven coats around the berries, hero shot.
  @review @gallery
  Scenario: workshop-3-seven-coats
    Given Nelim's Sanctuary: the animals are removed from the sanctuary "enclosure-south"
    And I set the hour to 12
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: the area from (150, 211) to (160, 220) is cleared
    And Nelim's Pickle Tools: a decor that finds no cell is skipped and logged
    And Nelim's Pickle Tools: the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor
    And Nelim's Pickle Tools: I place the decor "PlantPot_Daylily" near (151, 218)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (158, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (152, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (158, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" near (159, 217)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (159, 217) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (150, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (159, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (158, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (150, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (160, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (152, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" exactly at (154, 214)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (154, 214) is lit
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo0" is spawned at (153, 217)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo1" is spawned at (154, 218)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo2" is spawned at (156, 218)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo3" is spawned at (158, 216)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo4" is spawned at (153, 215)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo5" is spawned at (157, 215)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo6" is spawned at (155, 214)
    And Nelim's Pickle Tools: the animal "Dodo0" is given coat 0
    And Nelim's Pickle Tools: the animal "Dodo1" is given coat 1
    And Nelim's Pickle Tools: the animal "Dodo2" is given coat 2
    And Nelim's Pickle Tools: the animal "Dodo3" is given coat 3
    And Nelim's Pickle Tools: the animal "Dodo4" is given coat 4
    And Nelim's Pickle Tools: the animal "Dodo5" is given coat 5
    And Nelim's Pickle Tools: the animal "Dodo6" is given coat 6
    And I wait 60 ticks
    When Nelim's Pickle Tools: the animal "Dodo0" stands at (153, 217) facing East
    And Nelim's Pickle Tools: the animal "Dodo1" stands at (154, 218) facing South
    And Nelim's Pickle Tools: the animal "Dodo2" stands at (156, 218) facing South
    And Nelim's Pickle Tools: the animal "Dodo3" stands at (158, 216) facing West
    And Nelim's Pickle Tools: the animal "Dodo4" stands at (153, 215) facing East
    And Nelim's Pickle Tools: the animal "Dodo5" stands at (157, 215) facing West
    And Nelim's Pickle Tools: the animal "Dodo6" stands at (155, 214) facing North
    And Nelim's Pickle Tools: "Nelim" carries 10 of the item "RawBerries"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (155, 216)
    And Nelim's Pickle Tools: the thing "RawBerries" at (155, 216) is not forbidden
    And Nelim's Pickle Tools: "Nelim" stands at (151, 216) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSimpleSmile"
    And game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (154, 216) at root size 3
    And I take a screenshot "gallery-3-seven-coats"
    And Nelim's Pickle Tools: the decor is removed

  # Image 4: the hen on her hay nest, one egg taken.
  @review @gallery
  Scenario: workshop-4-the-nest
    Given Nelim's Sanctuary: the animals are removed from the sanctuary "enclosure-south"
    And I set the hour to 15
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: the area from (137, 213) to (140, 215) is cleared
    And Nelim's Pickle Tools: a decor that finds no cell is skipped and logged
    And Nelim's Pickle Tools: the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" exactly at (135, 217)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (135, 217) is lit
    And Nelim's Pickle Tools: I place the decor "EggBox" near (136, 212)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (135, 212) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (143, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (142, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (136, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (144, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 212) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (135, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Stool" near (143, 216)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" exactly at (135, 211)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (135, 211) is lit
    And Nelim's Pickle Tools: "Nelim" carries 8 of the item "Hay"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (142, 215)
    And Nelim's Pickle Tools: the thing "Hay" at (142, 215) is not forbidden
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (136, 215) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (141, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (135, 217) fully grown
    And Nelim's Pickle Tools: "Nelim" carries 15 of the item "Hay"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (138, 214)
    And Nelim's Pickle Tools: the thing "Hay" at (138, 214) is not forbidden
    And Nelim's Pickle Tools: a female adult animal of kind "RG_Dodo" named "Hen" is spawned at (138, 214)
    And Nelim's Pickle Tools: the animal "Hen" is given coat 4
    And I wait 60 ticks
    When Nelim's Pickle Tools: the animal "Hen" lies at (138, 214) facing South
    And Nelim's Pickle Tools: "Nelim" carries 1 of the item "EggChickenUnfertilized"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (139, 213)
    And Nelim's Pickle Tools: the thing "EggChickenUnfertilized" at (139, 213) is not forbidden
    And Nelim's Pickle Tools: "Nelim" carries the item "EggChickenUnfertilized"
    And Nelim's Pickle Tools: "Nelim" stands at (141, 214) facing West
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSimpleSmile"
    And game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (139, 214) at root size 2.8
    And I take a screenshot "gallery-4-the-nest"
    And Nelim's Pickle Tools: the decor is removed

  # Image 5: golden hour, Shogun turned back to a straggler.
  @review @gallery
  Scenario: workshop-5-golden-hour
    Given I set the hour to 17
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: the animals are removed from the area from (126, 208) to (150, 226)
    And Nelim's Pickle Tools: a decor that finds no cell is skipped and logged
    And Nelim's Pickle Tools: the cells of the growing zones in the area from (130, 204) to (168, 223) are kept free of decor
    And Nelim's Pickle Tools: the area from (134, 214) to (141, 221) is cleared
    And Nelim's Pickle Tools: I place the decor "TorchLamp" near (134, 217)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (134, 217) is lit
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" exactly at (135, 220)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (135, 220) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (137, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (143, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (144, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (138, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (142, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (135, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (140, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (139, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (136, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 214) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (136, 221) fully grown
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo1" is spawned at (140, 217)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo3" is spawned at (142, 218)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo5" is spawned at (141, 215)
    And Nelim's Pickle Tools: the animal "Dodo1" is given coat 1
    And Nelim's Pickle Tools: the animal "Dodo3" is given coat 3
    And Nelim's Pickle Tools: the animal "Dodo5" is given coat 5
    And I wait 60 ticks
    When Nelim's Pickle Tools: the animal "Dodo1" stands at (140, 217) facing East
    And Nelim's Pickle Tools: the animal "Dodo3" stands at (142, 218) facing East
    And Nelim's Pickle Tools: the animal "Dodo5" stands at (141, 215) facing East
    And Nelim's Pickle Tools: the animal "Shogun" stands at (138, 216) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (136, 218) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSimpleSmile"
    And game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (139, 217) at root size 3.5
    And I take a screenshot "gallery-5-golden-hour"
    And Nelim's Pickle Tools: the decor is removed

  # Image 6: closing image, the roost in the barn, last armful of hay.
  @review @gallery
  Scenario: workshop-6-roost
    Given Nelim's Sanctuary: the animals are removed from the sanctuary "barn"
    And I set the hour to 19
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: a decor that finds no cell is skipped and logged
    And Nelim's Pickle Tools: I place the decor "Brazier" near (201, 236)
    And Nelim's Pickle Tools: the decor "Brazier" at (201, 236) is lit
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo0" is spawned at (199, 238)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo2" is spawned at (201, 239)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo4" is spawned at (203, 238)
    And Nelim's Pickle Tools: an adult animal of kind "RG_Dodo" named "Dodo6" is spawned at (200, 241)
    And Nelim's Pickle Tools: the animal "Dodo0" is given coat 0
    And Nelim's Pickle Tools: the animal "Dodo2" is given coat 2
    And Nelim's Pickle Tools: the animal "Dodo4" is given coat 4
    And Nelim's Pickle Tools: the animal "Dodo6" is given coat 6
    And I wait 60 ticks
    When Nelim's Pickle Tools: the animal "Dodo0" lies at (199, 238) facing South
    And Nelim's Pickle Tools: the animal "Dodo2" lies at (201, 239) facing South
    And Nelim's Pickle Tools: the animal "Dodo4" lies at (203, 238) facing West
    And Nelim's Pickle Tools: the animal "Dodo6" lies at (200, 241) facing East
    And Nelim's Pickle Tools: "Nelim" carries 20 of the item "Hay"
    And Nelim's Pickle Tools: "Nelim" puts down what it carries at (201, 237)
    And Nelim's Pickle Tools: the thing "Hay" at (201, 237) is not forbidden
    And Nelim's Pickle Tools: "Nelim" stands at (200, 236) facing East
    And Nelim's Sanctuary: the "PokerTable" near (196, 238) is hidden
    And Nelim's Sanctuary: the "DiningChair" near (196, 238) is hidden
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSimpleSmile"
    And game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (201, 238) at root size 3.2
    And I take a screenshot "gallery-6-roost"
    And Nelim's Pickle Tools: the decor is removed
