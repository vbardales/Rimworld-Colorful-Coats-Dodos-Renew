@requires:purpleyam.colorfulcoats.hlxdodo
@requires:nelim.pickletools.textureowner
Feature: the declared incompatibility with purpleyam's original, observed

  # Declared in About.xml (incompatibleWith). Observed 2026-10-02 on Workshop 2388053651 as installed:
  # its only patch is wholly commented out, so it patches nothing on any version, and it ships the same
  # 21 PNGs, byte for byte, at the same paths as this mod. The symptom to assert is therefore a path shipped
  # twice with no visible effect, not duplicate defs or a second alternateGraphics list. Green means the
  # incompatibility still behaves as declared; red means the original changed (a live patch, other
  # textures) and the declaration needs another look. Pass map: wsl-deps.incompat-hlxdodo.map.

  Scenario: both mods run, and the original is the one this mod declares against
    Then mod "purpleyam.colorfulcoats.hlxdodo" is loaded
    And mod "nelim.colorfulcoats.dodos" is loaded

  Scenario: a coat texture is shipped twice
    Then Nelim's Pickle Tools: the texture "Things/Pawn/Animal/ReGrowth/Dodo/ExtinctDodoA_south" is shipped by at least 2 running mods

  Scenario: this mod's patch still applies
    Then def "RG_Dodo" was patched by mod "Colorful Coats - Dodos! Renew (unofficial)"
    And Nelim's Pickle Tools: the pawn kind "RG_Dodo" keeps 7 alternate graphics at a chance of "0.8"

  Scenario: the original adds no message of its own
    Then no errors were logged
