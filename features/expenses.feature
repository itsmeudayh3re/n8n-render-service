Feature: FCMS Expenses Management

  Scenario: View expenses list
    Given user is logged into FCMS
    When user navigates to expenses page
    Then user should see expenses list

  Scenario: Add new expense
    Given user is logged into FCMS
    And user navigates to expenses page
    When user clicks on add expense button
    And user fills in expense details
    And user submits the expense form
    Then expense should be added successfully
    And user should see the new expense in the list

  Scenario: Edit existing expense
    Given user is logged into FCMS
    And user navigates to expenses page
    And there is an existing expense
    When user clicks on edit expense
    And user modifies expense details
    And user saves the changes
    Then expense should be updated successfully

  Scenario: Delete expense
    Given user is logged into FCMS
    And user navigates to expenses page
    And there is an existing expense
    When user clicks on delete expense
    And user confirms the deletion
    Then expense should be deleted successfully
    And expense should not appear in the list
