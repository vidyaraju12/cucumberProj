Feature: This feature would be creating a calculator for Add and Subtract

  @sanity
  Scenario: To Add two numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario Outline: Add two numbers
    Given I have a calculator
    When I add <int1> and <int2>
    Then I should get the result as <result>

    Examples: 
      | int1 | int2 | result |
      |   10 |   20 |        30 |
      |    5 |    5 |        10 |
      |    6 |    6 |        12 |
      
      Scenario: To add two numbers
      Given: I have a calculator
      When I add below numbers
      |3|
      |2|
      |5|
      |4|
      |3|
      Then I should get the result as 17

      
       

   