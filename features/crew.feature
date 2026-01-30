Feature: FCMS Crew Management

  Scenario: View crew members list
    Given user is logged into FCMS
    When user navigates to crew page
    Then user should see crew members list

  Scenario: Add new crew member
    Given user is logged into FCMS
    And user navigates to crew page
    When user clicks on add crew member button
    And user fills in crew member details
    And user submits the form
    Then crew member should be added successfully
    And user should see the new crew member in the list

  Scenario: Search crew member
    Given user is logged into FCMS
    And user navigates to crew page
    When user enters crew member name in search field
    Then user should see filtered crew members matching the search

  Scenario: View crew member details
    Given user is logged into FCMS
    And user navigates to crew page
    And there is an existing crew member
    When user clicks on crew member name
    Then user should see crew member details page
