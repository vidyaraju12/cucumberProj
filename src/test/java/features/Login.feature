Feature: Login Feature Scenario

  Background: 
    Given I have launched the application
    And I click on the Login Link

  Scenario: This scenario is to define the login happy path
    #Given I have launched the application
    #And I click on the Login Link
    When I enter the correct username and passowrd
    And I click on the Login button
    Then I should land on the home page

@regression
  Scenario: This sceanrio is to define the failure path
    #Given I have launched the application
    #And I click on the Login Link
    When I enter the incorrect username and passowrd
    And I click on the Login button
    Then I should get the error message "The email or password you have entered is invalid."

@sanity
  Scenario: This sceanrio is to define the failure path
    #Given I have launched the application
    #And I click on the Login Link
    When I enter the username as "abc@xyz.com" and Password as "Abc@12344"
    And I click on the Login button
    Then I should get the error message "The email or password you have entered is invalid."

  Scenario Outline: This sceanrio is to define the failure path
    #Given I have launched the application
    #And I click on the Login Link
    When I enter the username as "<UserName>" and Password as "<Password>"
    And I click on the Login button
    Then I should get the error message "The email or password you have entered is invalid."

    Examples: 
      | UserName    | Password |
      | abc@xya.com | Abc@1234 |
      | pqr@xya.com | Etr@1234 |
