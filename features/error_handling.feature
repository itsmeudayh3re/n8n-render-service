Feature: FCMS Error Handling

  Scenario: Handle session timeout
    Given user is logged into FCMS
    When user session expires
    And user tries to perform an action
    Then user should be redirected to login page
    And user should see session expired message

  Scenario: Handle network error
    Given user is logged into FCMS
    When network connection is lost
    And user tries to submit timesheet
    Then user should see network error message
    And data should not be lost

  Scenario: Handle server error
    Given user is logged into FCMS
    When server returns an error
    And user tries to load a page
    Then user should see appropriate error message
    And user should be able to retry the action

  Scenario: Handle unauthorized access
    Given user is logged into FCMS with limited permissions
    When user tries to access restricted page
    Then user should see unauthorized access message
    And user should be redirected to appropriate page
