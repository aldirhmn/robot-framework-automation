*** Settings ***
Documentation     Adding Item to Cart
Resource          ../../../test-cases/step-definitions/cart/add_cart_steps.resource

*** Keywords ***
Adding Item to Cart
    [Tags]    add_to_cart
    Given User already in HomePage
    And User adding some Items to Cart
    When User click button Cart
    Then User successfully add item to cart
