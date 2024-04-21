*** Settings ***
Documentation     Adding Item to Cart
Resource          ../../../test-cases/step-definitions/cart/purchase_items.resource

*** Keywords ***
Checkout Item Successfully
    Given User already in Cart Page
    And User Continue to Click Button Checkout
    When User Fill Information Checkout
    And User Click Button Continue
    Then User Verify Checkout Complete

