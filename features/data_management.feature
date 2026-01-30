Feature: FCMS Data Management

  Scenario: Search functionality in timesheet
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user enters search criteria
    Then user should see filtered results matching the search

  Scenario: Sort timesheet entries
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user clicks on sort by date
    Then timesheet entries should be sorted by date

  Scenario: Pagination in projects list
    Given user is logged into FCMS
    And user navigates to projects page
    And there are more than 10 projects
    When user clicks on next page
    Then user should see next set of projects

  Scenario: Bulk actions on tasks
    Given user is logged into FCMS
    And user navigates to tasks page
    And there are multiple tasks
    When user selects multiple tasks
    And user performs bulk action
    Then selected tasks should be updated
