*** Settings ***
Library           SeleniumLibrary
Resource          ../../../resources/object-locators/cart-page/cart_object.resource
Resource          ../../../resources/variables/cart/product_variable.resource

*** Keywords ***
Already In HomePage
    Wait Until Element Is Visible    ${OBJECT1}     timeout=10s
    Element Should Be Visible    ${OBJECT1}

Click All Products Button
    FOR    ${productName}    IN    @{PRODUCT NAMES}
        Click Product Button    ${productName}
    END

Click Button Cart
    Click Element   ${BUTTON_CART}

Product Already Added
    Element Should Be Visible    ${OBJECT_CART1}
