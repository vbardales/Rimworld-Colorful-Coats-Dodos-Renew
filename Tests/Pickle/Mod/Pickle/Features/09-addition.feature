@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.savesteps
Feature: the mod added to a save in progress

  # TESTING.md scenario D. RG_Dodo belongs to ReGrowth: Extinct Animals, not to this mod, so a colony can hold dodos
  # before this mod exists. The save "dodos-without-mod" was made WITHOUT this mod (D1, below) and lives in this test
  # mod's Pickle/Fixtures. D2 loads it in a normal pass, where the mod is active: the coat is computed from the bird's id,
  # never stored, so birds that predate the mod draw one on load, with the chance of 0.8.
  #
  # D1 makes the fixture. It is @wip because it only means something in a launch where nelim.colorfulcoats.dodos is
  # out of the mod list, and there is no way to start a request without the mod (no -ThenWith): the second launch of
  #
  #   Submit-PickleRun.ps1 -Mod ColorfulCoatsDodosRenew -Owner <id> -Label "<sha>" -IncludeWip `
  #     -DepMap wsl-deps.sans-facultatifs.map -Filter '01-guard-and-patch' -Then '09-addition::D1' `
  #     -ThenWithout nelim.colorfulcoats.dodos -EvidenceDir Tests/Pickle/Evidence/<fresh>
  #
  # writes it. The .rws is then copied from the game's saves folder to Tests/Pickle/Mod/Pickle/Fixtures/ and committed.
  # The test mod depends on this mod, so the fixture holds the dependency in its mod list; Pickle does not read it.

  @wip
  Scenario: D1 a save made without the mod holds ten dodos
    Given the save "test-colony" is loaded
    And Nelim's Pickle Tools: 10 adult animals of kind "RG_Dodo" are spawned
    Then Nelim's Pickle Tools: no animal of kind "RG_Dodo" carries an extra coat
    When Nelim's Pickle Tools: the game is saved as "dodos-without-mod"
    And Nelim's Pickle Tools: the saved game "dodos-without-mod" is handed to the mod "nelim.colorfulcoats.dodos.pickletests"

  # 10 birds at 0.8: fewer than 6 coloured has a chance of about 0.6 percent, so a red here means the coats did not reach
  # birds that already existed. The expected count is 8 of 10.
  Scenario: D2 dodos that predate the mod draw a coat on load
    Given the save "dodos-without-mod" is loaded
    Then Nelim's Pickle Tools: among the existing animals of kind "RG_Dodo", at least 6 carry an extra coat
    And no errors were logged
