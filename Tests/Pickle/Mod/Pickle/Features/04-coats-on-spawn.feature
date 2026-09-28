@requires:nelim.pickletools.coatsteps
Feature: dodos hatch in more than one colour

  # TESTING.md scenario B, and the statistical half of A. The chance of an extra coat is 0.8, so
  # each of the seven coats is rarer than that: among 30 adults the odds of seeing fewer than four
  # different ones are negligible, and a red here means the coats did not reach the birds. The
  # failure message prints N, K and the coats seen.

  Background:
    Given the save "test-colony" is loaded

  Scenario: thirty adult dodos show several different coats
    Given Nelim's Pickle Tools: 30 adult animals of kind "RG_Dodo" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 4 different extra coats were drawn
    And no errors were logged

  # Not an assertion: the capture is for a person to open. The camera is wherever the fixture leaves it, and
  # there is no step to frame the birds, so the reviewer answers one question - are these plainly different
  # birds, not seven shades of one? - and, if the birds are out of frame, says so instead of passing it.
  @review
  Scenario: the coats are plainly different birds
    Given Nelim's Pickle Tools: 12 adult animals of kind "RG_Dodo" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "RG_Dodo", at least 2 different extra coats were drawn
    When I take a screenshot "dodo-coats"
