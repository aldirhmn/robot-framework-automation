*** Settings ***
Resource          ../../../resources/keywords/login/login_keyword.resource
Resource          ../../../resources/variables/login/login_variable.resource

*** Keywords ***
User open Browser and Navigate to SauceDemo
    Open Sauce Demo Login Page

User input valid Username and Password
    Enter Username And Password    ${USERNAME}    ${PASSWORD}

User input invalid Username and Password
    Enter Username And Password    ${INVALID USERNAME}    ${PASSWORD}

User click Login Button
    Submit Login

User successfully Login and Direct to HomePage
    Location Should Be    https://www.saucedemo.com/inventory.html

User unsuccessfully Login and Direct to LoginPage
    Check Error Message