*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/login/login_variable.resource
Resource          ../../object-locators/login-page/login_object.resource
Resource          ../../../config/global_variable.resource
Resource          ../../../lib/helpers.robot

*** Keywords ***
Open Sauce Demo Login Page
    Open Browser    ${LOGIN PAGE}    browser=Chrome
    Maximize Browser Window

Enter Username And Password
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME INPUT}    ${username}
    Input Text    ${PASSWORD INPUT}    ${password}
    Take Screenshot Custom

Submit Login
    Click Element    ${LOGIN BUTTON}

Close The Browser
    [Teardown]    Close Browser

Check Error Message
    Element Should Be Visible    ${ERROR MESSAGE}
