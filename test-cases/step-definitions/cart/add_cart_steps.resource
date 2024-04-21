*** Settings ***
Resource          ../../../resources/keywords/cart-keyword/cart_keyword.resource

*** Keywords ***
User already in HomePage
    Already In HomePage
    Take Screenshot Custom

User adding some Items to Cart
    Click All Products Button
    Take Screenshot Custom

User click button Cart
    Click Button Cart
    Take Screenshot Custom

User successfully add item to cart
    Product Already Added
    Take Screenshot Custom


