*** Settings ***
Resource          ../../../resources/keywords/cart-keyword/checkout_keyword.resource

*** Keywords ***
User already in Cart Page
    Product Already Added

User Continue to Click Button Checkout
    Click CheckOut Button

User Fill Information Checkout
    Fill Information Checkout

User Click Button Continue
    Click Button Continue

User Verify Checkout Complete
    Click Button Finish Checkout
    Verify Checkout Complete
    Click Button Back Home


