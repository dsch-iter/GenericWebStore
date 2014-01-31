Feature: Search
  Scenario: Find content in the Amazon site
    Given I enter "James Blake" in the search field
    When I click the Go button
    Then the title "Overgrown" should be displayed.