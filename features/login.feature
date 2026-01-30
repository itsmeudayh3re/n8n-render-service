Feature: FCMS Login

  Scenario: Login with valid credentials
    Given user navigates to FCMS login page
    When user enters valid username and password
    And user clicks on login button
    Then user should be logged in successfully
  And user logs out from the application
  Then user should be logged out successfully

Scenario: Login with invalid credentials
    Given user navigates to FCMS login page
    When user enters invalid username and password
    And user clicks on login button
    Then user should see an error message

  