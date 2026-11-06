# TESTING.md scenario E, second launch (see 08-removal-write.feature). Colorful Coats - Dodos! Renew and its own test
# companion are out of the mod list: `mod "nelim.colorfulcoats.dodos" is not loaded` is the line that says the launch
# really was without it, and the reason this is a scenario of a mod that does not depend on the dodos mod. The
# assertions are the absence of the coats and an empty error log; what a person sees (brown dodos) is not asserted.
@requires:nelim.pickletools.coatsteps
Feature: a game saved with the coats, loaded without the mod

  Scenario: E2 the same save loads without the mod, and no dodo carries a coat
    Given mod "nelim.colorfulcoats.dodos" is not loaded
    And the save "dodos-with-coats" is loaded
    Then Nelim's Pickle Tools: no animal of kind "RG_Dodo" carries an extra coat
    And no errors were logged
