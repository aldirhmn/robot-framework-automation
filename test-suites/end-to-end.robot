*** Settings ***
Documentation    Running All Suites
Resource        ../test-cases/features/cart/add_to_cart_tests.robot
Resource        ../test-cases/features/cart/purchase_items_tests.robot
Resource        ../test-cases/features/login/login_tests.robot
Force Tags      end-to-end

*** Test Cases ***
End To End Test
    [Tags]    positive end-to-end
    Successful Login With Valid Credentials
    Adding Item to Cart
    Checkout Item Successfully