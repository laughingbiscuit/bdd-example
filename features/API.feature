Feature: API Testing

  Scenario: Call HTTPBin
    Given I query name is Sean
    When I call the any API
    Then response is successful
    And response is JSON
    And the name param is echoed
