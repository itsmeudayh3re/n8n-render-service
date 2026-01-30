Feature: FCMS Navigation

  Scenario: Navigate to timesheet from menu
    Given user is logged into FCMS
    When user clicks on hamburger menu
    And user clicks on timesheet link
    Then user should be navigated to timesheet page

  Scenario: Navigate to projects from menu
    Given user is logged into FCMS
    When user clicks on hamburger menu
    And user clicks on projects link
    Then user should be navigated to projects page

  Scenario: Navigate to crew from menu
    Given user is logged into FCMS
    When user clicks on hamburger menu
    And user clicks on crew link
    Then user should be navigated to crew page

  Scenario: Navigate to reports from menu
    Given user is logged into FCMS
    When user clicks on hamburger menu
    And user clicks on reports link
    Then user should be navigated to reports page

  Scenario: Navigate to settings from menu
    Given user is logged into FCMS
    When user clicks on hamburger menu
    And user clicks on settings link
    Then user should be navigated to settings page
