Feature: FCMS Projects Management

  Scenario: View projects list
    Given user is logged into FCMS
    When user navigates to projects page
    Then user should see projects list

  Scenario: Create new project
    Given user is logged into FCMS
    And user navigates to projects page
    When user clicks on create project button
    And user fills in project details
    And user submits the project form
    Then project should be created successfully
    And user should see the new project in the list

  Scenario: View project details
    Given user is logged into FCMS
    And user navigates to projects page
    And there is an existing project
    When user clicks on project name
    Then user should see project details page
    And user should see project information

  Scenario: Edit project
    Given user is logged into FCMS
    And user navigates to projects page
    And there is an existing project
    When user clicks on edit project
    And user modifies project details
    And user saves the changes
    Then project should be updated successfully
