@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.savesteps
@wip
Feature: the mod removed from a save in progress

  # TESTING.md scenario E. Two launches, one request: the first writes a save that holds coloured dodos and hands it to
  # this test mod (which stays), the second loads that save with nelim.colorfulcoats.dodos taken out of the mod list.
  #
  #   Submit-PickleRun.ps1 -Mod ColorfulCoatsDodosRenew -Owner <id> -Label "<sha>" -IncludeWip `
  #     -DepMap wsl-deps.sans-facultatifs.map -Filter '08-removal::E1' -Then '08-removal::E2' `
  #     -ThenWithout nelim.colorfulcoats.dodos -EvidenceDir Tests/Pickle/Evidence/<fresh>
  #
  # Both scenarios are @wip: E2 would fail in any normal pass (the mod is loaded there, the birds carry coats), so
  # only the request above plays them. What nothing here can say is what a person sees (brown dodos on the map): the
  # assertions are the absence of the coats and an empty error log. The test mod declares the dodos mod as a
  # dependency, so the second launch also shows a missing-dependency notice for it; if Pickle refuses to start because
  # of it, the run reports that, and E stays a check played by the owner.

  Scenario: E1 a save holds dodos with their coats
    Given the save "test-colony" is loaded
    And Nelim's Pickle Tools: 20 adult animals of kind "RG_Dodo" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 3 different extra coats were drawn
    When Nelim's Pickle Tools: the game is saved as "dodos-with-coats"
    And Nelim's Pickle Tools: the saved game "dodos-with-coats" is handed to the mod "nelim.colorfulcoats.dodos.pickletests"

  Scenario: E2 the same save loads without the mod, and no dodo carries a coat
    Given the save "dodos-with-coats" is loaded
    Then Nelim's Pickle Tools: no animal of kind "RG_Dodo" carries an extra coat
    And no errors were logged
