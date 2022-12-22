Feature: Login Test - The user should be able to login with valid credentials

  Background: Go to home page login
    Given The user is on the login page

  @loginWithoutParameters
  Scenario: Positive Scenario 1 - user should be able to login
    When The user enters valid credentials
    Then verify "Welcome hsnkck"

  @loginWithParameters
  Scenario: Positive Scenario 2 - user should be able to login
    When The user enters "hsnkck" and "test1234" and click login button
    Then verify "Welcome hsnkck"

  @loginWithScenarioOutline
  Scenario Outline: Positive Scenario 3 - user should be able to login
    When The user enters "<username>" and "<password>" and click login button
    Then verify "<welcomeUser>"
    Examples:
      | username | password | welcomeUser    |
      | hsnkck   | test1234 | Welcome hsnkck |

  @loginWithDataTableAndScenarioOutline
  Scenario Outline: Positive Scenario 4 - user should be able to login
    When The user enters  valid username and password
      | username | <user>     |
      | password | <password> |
    Then verify "<welcomeUser>"

    Examples:
      | user   | password | welcomeUser    |
      | hsnkck | test1234 | Welcome hsnkck |

