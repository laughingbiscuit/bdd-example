Feature: Chrome

  Scenario: Browser test
    Given I browse to HTTP form
    And I enter some data
    When I submit
    Then I am shown a confirmation
