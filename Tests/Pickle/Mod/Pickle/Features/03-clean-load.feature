@requires:nelim.pickletools.loadaudit
Feature: the mod loads without a message of its own

  # Last on purpose: the audit reads the whole log so far, including the scenarios before it.

  Scenario: nothing in the log belongs to this mod
    Then Nelim's Pickle Tools: the load of the mod "nelim.colorfulcoats.dodos" is clean
    And no errors were logged
