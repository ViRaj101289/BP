Feature: Checkout
  User is able to perform checkout with the required details.

  Scenario: User is able to perform checkout with the required details
    Given User is on the checkout page
    When User fills all the required field
    And User click on Submit
    Then Form gets submitted

  Scenario: User tries to perform checkout with the missing required fields
    Given User is on the checkout page
    When User clicks on Submit missing out the required field
    Then User see error message

  Scenario: User enter invalid email
    Given User is on the checkout page
    When User click on Submit entering invalid email format
    Then User see error message to enter the valid email

   Scenario: User enter invalid Name
    Given User is on the checkout page
    When User click on Submit entering invalid first or last name
    Then User see error message to enter the valid name

   Scenario: User enter invalid zip
    Given User is on the checkout page
    When User click on Submit entering invalid zip
    Then User see error message to enter the valid zip


