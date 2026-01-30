Feature: FCMS Reports

  Scenario: View reports page
    Given user is logged into FCMS
    When user navigates to reports page
    Then user should see available reports

  Scenario: Generate timesheet report
    Given user is logged into FCMS
    And user navigates to reports page
    When user selects timesheet report
    And user selects date range
    And user clicks on generate report button
    Then report should be generated successfully
    And user should see timesheet report data

  Scenario: Generate expenses report
    Given user is logged into FCMS
    And user navigates to reports page
    When user selects expenses report
    And user selects date range
    And user clicks on generate report button
    Then report should be generated successfully
    And user should see expenses report data

  Scenario: Export report to PDF
    Given user is logged into FCMS
    And user navigates to reports page
    And a report is generated
    When user clicks on export to PDF button
    Then report should be exported as PDF file

  Scenario: Export report to Excel
    Given user is logged into FCMS
    And user navigates to reports page
    And a report is generated
    When user clicks on export to Excel button
    Then report should be exported as Excel file
