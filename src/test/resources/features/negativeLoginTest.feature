Feature: Negative Login Test - The user should NOT be ab le to login with invalid credentials

  Background: Go to home page login
    Given The user is on the login page
@negativeScenario
  Scenario Outline: Negative Scenario- User should NOT be able to login with invalid credentials
    When The user enters "<invalidUsername>" and "<invalidPassword>" and click login button
    Then verify that invalid "<message>"
    Examples:
      | invalidUsername | invalidPassword | message                                |
      | hsnkck          |                 | Please fill out Username and Password. |
      |                 | test1234        | Please fill out Username and Password. |
      |                 | wrong           | Please fill out Username and Password. |
      |                 |                 | Please fill out Username and Password. |
      | hsnkck          | wrong           | Wrong password.                        |
      | wrong           | test1234        | User does not exist.                   |
      | wrong           | wrong           | User does not exist.                   |


