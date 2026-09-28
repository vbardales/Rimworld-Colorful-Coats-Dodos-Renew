@requires:nelim.pickletools.textureowner
Feature: the 21 coat textures are served by this mod

  # Offline, Check-Mod.ps1 proves the files exist. This proves the game's own content holders
  # answer for them, and that no other running mod took the path. ContentFinder keys are the
  # path under Textures without extension; Graphic_Multi asks for the three rotations below.

  Scenario Outline: <coat> facing <rotation> is answered by this mod
    Then Nelim's Pickle Tools: the texture "Things/Pawn/Animal/ReGrowth/Dodo/ExtinctDodo<coat>_<rotation>" is answered by the mod "nelim.colorfulcoats.dodos"

    Examples:
      | coat | rotation |
      | A | north |
      | A | east |
      | A | south |
      | B | north |
      | B | east |
      | B | south |
      | C | north |
      | C | east |
      | C | south |
      | D | north |
      | D | east |
      | D | south |
      | E | north |
      | E | east |
      | E | south |
      | F | north |
      | F | east |
      | F | south |
      | G | north |
      | G | east |
      | G | south |
