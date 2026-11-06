# TESTING.md scenario E, first launch: a game saved WITH the mod, loaded later WITHOUT it. The mod list is fixed when the
# game starts, so this takes two launches under one hold of the lock, the second with the mod taken out of the list:
#
#   -DepMap wsl-deps.removal.map -Filter '08-removal-write' -Then 'removal-check' `
#     -ThenWithout 'nelim.colorfulcoats.dodos','nelim.colorfulcoats.dodos.pickletests'
#
# This feature saves 20 coloured dodos and hands the file to the companion mod nelim.colorfulcoats.dodos.pickleremoval
# (Tests/Pickle/Removal/Mod), which does not depend on the dodos mod. The second launch is its removal-check.feature (E2).
# Played only by the pass wsl-deps.removal.map: without the companion the tag makes it a skip, so no @wip is needed.
@requires:nelim.colorfulcoats.dodos.pickleremoval @requires:nelim.pickletools.coatsteps @requires:nelim.pickletools.savesteps
Feature: a game saved with the coats, handed over to a launch without the mod

  Scenario: E1 a save holds dodos with their coats
    Given the save "test-colony" is loaded
    And Nelim's Pickle Tools: 20 adult animals of kind "RG_Dodo" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When Nelim's Pickle Tools: the game is saved as "dodos-with-coats"
    And Nelim's Pickle Tools: the saved game "dodos-with-coats" is handed to the mod "nelim.colorfulcoats.dodos.pickleremoval"
