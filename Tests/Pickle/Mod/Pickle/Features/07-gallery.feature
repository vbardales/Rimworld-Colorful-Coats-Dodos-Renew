@requires:nelim.sanctuarybacklot
@requires:nelim.pickletools.screenshotstudio
@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.camerazoom
@requires:nelim.pickletools.colonistrace
Feature: Workshop gallery captures

  # Staged photographs, not assertions (GALLERY.md): a person opens each image. Pass: -DepMap wsl-deps.galerie.map (plus Mlie.StickLantern 2024351846 and lordfelix.HatHairControl 3760821540).
  # SHOTLIST of 2026-11-07 (skill write-shotlist). The Scenario blocks below are the superseded two-shot draft: they are rewritten to this
  # plan before any ticket (a scene not in this plan is not written; rewriting a scene deletes its old captures, GALLERY.md).
  #
  # STORY. "Feeding day at the dodo pen". Nelim, keeper of the Sanctuary and only colonist, spends one day with the dodo flock in the
  # enclosure-south pen (x 130-168, z 204-223): she lets the flock out at 8, feeds it, counts the seven coats at noon, finds a nest at 15,
  # herds the stragglers home at 17 and lays the last hay in the barn at 19. One start hour per image (set with "I set the hour"),
  # clear sky; the sun is up at 8 (check on the first capture). Places: enclosure-south for 1 to 5, barn for the closing image 6.
  # Everything the mod brings is shown: coats in a flock (1), on birds that move (2), all seven side by side (3), on a resting bird (4),
  # in warm evening light (5), asleep (6). Nelim (NSB canon, nothing changed): hair colour Hair_DarkSaturatedReddish #382412, hairstyle
  # Roo_Royal_LongHD under the straw hat (Apparel_StrawHat; the roster hairstyle "with a hat"; hair shown by Hat Hair Control 3760821540,
  # seed in the Sanctuary config), mustard shirt (Apparel_BasicShirt dyed 205,150,40, free outfit) over her usual trousers, her own face.
  # Smile: the roster mouth is MouthLipsSmirk; MouthSmile + LidCheerful is a mouth override that needs the owner's express validation
  # (sync-nsb rule 3), PENDING: no scenario is written before the answer. Same outfit all day. Shogun (NSB labrador, leather collar,
  # validated daily look) appears in 5. Animals spawned after the place is framed. The old Background hair lines are dropped.
  # Series estimate 4/5. Director pass (Opus) kept: hat, root sizes cut for 268 px, hay not repeated, one subject in 4, Shogun facing the
  # camera in 5, scene 6 reframed on one brazier. Not kept: none.
  #
  # Plan (index name; place; hour; root size; subject; living things; decor; instant and gesture; what it says):
  #   1 workshop-1-dawn; enclosure-south centred on the south gate (159, 207); 8:00; root 6 (wide); the flock leaving the night shelter;
  #     Nelim at the gate carrying Kibble, 9 dodos of mixed coats drifting toward her, heads turned to the open gate; two lit TorchLamp
  #     on the gate posts, hay piles, a patch of fully grown Plant_Daylily, nesting boxes behind; instant: she has just pulled the gate
  #     open, the first bird is about to step through; gesture: Nelim stands at the gate facing south holding the item, the birds Wait
  #     with a facing. "The pen wakes up in many colours."
  #   2 workshop-2-breakfast; enclosure-south, middle of the pen; 10:00; root 4 (medium); the hay drop; Nelim just put the hay down
  #     (pile at her feet, hands empty, smiling), 5 dodos (coats 0, 2, 3, 5, 6) face the pile, two in three-quarter view; DR_StickLantern
  #     lit on a post, Stool, Plant_YellowTallGrass scattered, nesting boxes behind; instant: before the first peck; gesture: birds
  #     given coat N and facing set, Nelim "stands at" beside the pile after "puts down what it carries". "Breakfast is served."
  #   3 workshop-3-seven-coats; enclosure-south, east side; 12:00; root 3.5 (tight, hero); all seven coats (0 to 6) in a loose cluster
  #     pecking at berries Nelim tossed, 2 to 3 birds facing the camera, the rest side-on or three-quarter, staggered in depth; Nelim at
  #     the left edge carrying RawBerries, smiling, looking at the birds; PlantPot_Daylily and fully grown Plant_Daylily, tall yellow
  #     grass as straw, one lit TorchLamp at the edge; instant: the berries have just landed; gesture: "faces" per bird, coats by
  #     "is given coat". "Seven coats, one flock."
  #   4 workshop-4-the-nest; enclosure-south, at the nesting boxes; 15:00; root 3 (tight); one hen (one coat) asleep (LayDown) on a nest of
  #     tall yellow grass beside an EggBox; Nelim at the right carrying one egg (EggChickenUnfertilized if the dodo egg def is not
  #     found) away from the nest, looking back at the hen; DR_StickLantern, daylilies, hay; instant: she has just lifted the egg;
  #     gesture: the hen "lies at" facing south, Nelim "carries the item". One subject: the sleeping hen. "A quiet afternoon, one egg."
  #   5 workshop-5-golden-hour; enclosure-south toward the west gate (130, 219); 17:00; root 4 (medium); herding home; Shogun faces the
  #     camera, turned back toward a straggling dodo, three more dodos side-on walking toward the barn (east texture), Nelim behind
  #     them; two lit TorchLamp along the path, low warm light; instant: the straggler has just stopped; gesture: Shogun "stands at"
  #     facing South, dodos "stand at" facing East. Shogun wears Apparel_leatherdogcollar (the Sanctuary default). "The last bird comes home."
  #   6 workshop-6-roost; barn, east extension; 19:00; root 4 (medium, closing); one lit Brazier, 4 to 5 dodos asleep (LayDown) on Hay
  #     (floor, not colonist beds), Nelim at the edge mid-step laying the last armful of Hay (Hay carried), smiling at them, hat on;
  #     instant: the last bird has just settled; gesture: "lies at" per bird, Nelim "carries 20 of the item Hay". "Everyone is home."
  # Interface windows: none (the mod has no settings, no menu).
  # Estimate (1 to 5) and main risk: 1 = 4, risk coats read as colour spots at root 6; 2 = 4, risk the dropped-hay pose reads as empty
  # hands only; 3 = 4.5, risk bird overlap hides a coat; 4 = 4, risk dodo egg def unknown (fallback chicken egg), lying hen seen from a
  # low angle; 5 = 4, risk Shogun far from the frame (a "stands at" teleports him), straggler pose; 6 = 4, risk lying birds hide coats
  # (root 4 keeps them about 19 px at 268 px).

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
    And Nelim's Pickle Tools: "Nelim" stands at (140, 214) facing South
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
    And Nelim's Pickle Tools: the animal "Dodo1" stands at (146, 213) facing South
    And Nelim's Pickle Tools: the animal "Dodo2" stands at (148, 213) facing South
    And Nelim's Pickle Tools: the animal "Dodo3" stands at (150, 213) facing South
    And Nelim's Pickle Tools: the animal "Dodo4" stands at (152, 213) facing South
    And Nelim's Pickle Tools: the animal "Dodo5" stands at (154, 213) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (143, 214) facing South
    And Nelim's Sanctuary: Nelim has her own face
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the area centred on (149, 213) at root size 4.5
    And I take a screenshot "gallery-2-group"
