Feature: FCMS Tasks Management

  Scenario: View tasks list
    Given user is logged into FCMS
    When user navigates to tasks page
    Then user should see tasks list

  Scenario: Create new task
    Given user is logged into FCMS
    And user navigates to tasks page
    When user clicks on create task button
    And user fills in task details
    And user assigns task to crew member
    And user submits the task form
    Then task should be created successfully
    And user should see the new task in the list

  Scenario: Update task status
    Given user is logged into FCMS
    And user navigates to tasks page
    And there is an existing task
    When user changes task status
    And user saves the changes
    Then task status should be updated successfully

  Scenario: Filter tasks by status
    Given user is logged into FCMS
    And user navigates to tasks page
    When user selects a status filter
    Then user should see only tasks with selected status
