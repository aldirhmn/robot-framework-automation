*** Settings ***
Resource          ../../variables/login/login_variable.resource
Library           Collections

*** Keywords ***
Construct Button Locator
    [Arguments]    ${productName}
    ${xpath}=    Set Variable    xpath=//div[text()='${productName}']/ancestor::div[contains(@class,'inventory_item')]//button
    [Return]    ${xpath}

Click Product Button
    [Arguments]    ${productName}
    ${BUTTON_XPATH}=    Construct Button Locator    ${productName}
    Click Element    ${BUTTON_XPATH}

*** Variables ***
${OBJECT1}    xpath=//div[normalize-space()='Sauce Labs Backpack']/../../..//button
${BUTTON_CART}    id=shopping_cart_container
${OBJECT_CART1}     xpath=//div[@class='cart_item_label']