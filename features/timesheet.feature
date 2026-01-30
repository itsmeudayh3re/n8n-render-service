Feature: FCMS Timesheet Management

  Scenario: View timesheet in list view
    Given user is logged into FCMS
    When user navigates to timesheet page
    And user clicks on list view
    Then user should see timesheet entries in list format

  Scenario: Navigate to previous week in timesheet calendar
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user clicks on previous week button
    Then user should see previous week's calendar view

  Scenario: Navigate to next week in timesheet calendar
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user clicks on next week button
    Then user should see next week's calendar view

  Scenario: Submit timesheet for the week
    Given user is logged into FCMS
    And user navigates to timesheet page
    And user fills in timesheet entries for the week
    When user clicks on submit week button
    Then user should see a success message
    And timesheet should be submitted successfully

  Scenario: View timesheet expenses
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user clicks on expenses link
    Then user should see expenses page
