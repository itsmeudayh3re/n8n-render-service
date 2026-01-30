Feature: FCMS Dashboard

  Scenario: View dashboard after login
    Given user is logged into FCMS
    When user navigates to dashboard
    Then user should see dashboard page
    And user should see summary statistics

  Scenario: Access hamburger menu
    Given user is logged into FCMS
    When user clicks on hamburger menu
    Then user should see navigation menu options
