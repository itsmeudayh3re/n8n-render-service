Feature: FCMS User Profile

  Scenario: View user profile
    Given user is logged into FCMS
    When user navigates to profile page
    Then user should see profile information
    And user should see their personal details

  Scenario: Update user profile
    Given user is logged into FCMS
    And user navigates to profile page
    When user clicks on edit profile button
    And user updates profile information
    And user saves the changes
    Then profile should be updated successfully
    And user should see updated information

  Scenario: Change password
    Given user is logged into FCMS
    And user navigates to profile page
    When user clicks on change password
    And user enters current password
    And user enters new password
    And user confirms new password
    And user submits the form
    Then password should be changed successfully
