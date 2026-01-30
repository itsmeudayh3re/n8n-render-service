Feature: FCMS Form Validation

  Scenario: Validate required fields in timesheet
    Given user is logged into FCMS
    And user navigates to timesheet page
    When user tries to submit timesheet without filling required fields
    Then user should see validation error messages
    And timesheet should not be submitted

  Scenario: Validate required fields in expense form
    Given user is logged into FCMS
    And user navigates to expenses page
    When user clicks on add expense button
    And user tries to submit expense form without filling required fields
    Then user should see validation error messages
    And expense should not be created

  Scenario: Validate date range in reports
    Given user is logged into FCMS
    And user navigates to reports page
    When user selects invalid date range
    And user tries to generate report
    Then user should see date range validation error
    And report should not be generated

  Scenario: Validate password change form
    Given user is logged into FCMS
    And user navigates to profile page
    When user clicks on change password
    And user enters incorrect current password
    And user submits the form
    Then user should see error message for incorrect current password
