*** Settings ***
Documentation     A test suite with a single test for successful login.
Resource          ../../../test-cases/step-definitions/login/login_steps.resource
# Force Tags        login

*** Keywords ***
Successful Login With Valid Credentials
    [Tags]    valid
    Given User open Browser and Navigate to SauceDemo
    When User input valid Username and Password
    And User click Login Button
    Then User successfully Login and Direct to HomePage

Unsuccessful Login With Invalid Credentials
    [Tags]    invalid
    Given User open Browser and Navigate to SauceDemo
    When User input invalid Username and Password
    And User click Login Button
    Then User unsuccessfully Login and Direct to LoginPage
