*** Settings ***
Library     SeleniumLibrary
Resource          ../../../resources/object-locators/cart-page/checkout_object.resource
Resource          ../../../resources/variables/cart/information_checkout_variable.resource
Resource          ../../../lib/helpers.robot

*** Keywords ***
Click CheckOut Button
    Click Element       ${BUTTON_CHECKOUT}
    Take Screenshot Custom

Fill Information Checkout
    Input Text    ${FIELD_FIRSTNAME}    ${FIRST_NAME}
    Input Text    ${FIELD_LASTNAME}     ${LAST_NAME}
    Input Text    ${FIELD_POSTAL_CODE}  ${POSTAL_CODE}
    Take Screenshot Custom

Click Button Continue
    Click Element       ${BUTTON_CONTINUE}
    Take Screenshot Custom

Click Button Finish Checkout
    Click Element       ${BUTTON_FINISH}
    Take Screenshot Custom

Verify Checkout Complete
    Wait Until Element Is Visible    ${ELEMENT_CHECKOUT_COMPLETE}
    Take Screenshot Custom
    ${textVerify}=      Get Text    ${ELEMENT_CHECKOUT_COMPLETE_TEXT}
    Log    ${textVerify}
    ${textVerify2}=     Get Text    ${ELEMENT_CHECKOUT_COMPLETE_HEADER}
    Log    ${textVerify2}

Click Button Back Home
    Click Element    ${BUTTON_BACK_HOME}
    Take Screenshot Custom