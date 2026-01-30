Feature: FCMS Settings

  Scenario: Change theme to Saffron
    Given user is logged into FCMS
    When user navigates to settings
    And user selects Saffron theme
    Then theme should be changed to Saffron

  Scenario: Change theme to Sky Blue
    Given user is logged into FCMS
    When user navigates to settings
    And user selects Sky Blue theme
    Then theme should be changed to Sky Blue

  Scenario: Change theme to Red
    Given user is logged into FCMS
    When user navigates to settings
    And user selects Red theme
    Then theme should be changed to Red

  Scenario: Change theme to Green
    Given user is logged into FCMS
    When user navigates to settings
    And user selects Green theme
    Then theme should be changed to Green

  Scenario: Change theme to Purple
    Given user is logged into FCMS
    When user navigates to settings
    And user selects Purple theme
    Then theme should be changed to Purple

  Scenario: Access calendar settings
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user clicks on calendar settings button
    Then user should see calendar settings options
