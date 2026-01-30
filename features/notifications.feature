Feature: FCMS Notifications

  Scenario: View notifications
    Given user is logged into FCMS
    When user clicks on notifications icon
    Then user should see notifications list

  Scenario: Mark notification as read
    Given user is logged into FCMS
    And there are unread notifications
    When user clicks on a notification
    Then notification should be marked as read

  Scenario: Clear all notifications
    Given user is logged into FCMS
    And there are notifications
    When user clicks on clear all notifications
    Then all notifications should be cleared
