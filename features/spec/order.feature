Feature: Place an order
  So that I can place an order
  I as a customer
  I wish to finalize a purchase

  Scenario: Making a purchase
    Given I visit the restaurant list
    And I add a product
    When I confirm my order
    Then the site finalized my order