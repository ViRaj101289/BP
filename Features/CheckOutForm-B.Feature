Feature: Checkout
  User able to perform checkout with the required details.

  Scenario: User tries to perform checkout with the missing required fields
    Given User is on the checkout page
    When User clicks on Submit missing out the required field
    Then User see error message