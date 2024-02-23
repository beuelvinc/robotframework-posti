*** Settings ***
Library     SeleniumLibrary 
Suite Setup     Open Browser To Website
Resource    ../keywords/variables.robot
Resource    ../keywords/common_keywords.robot

*** Test Cases ***
Open Website Test
    Go To ALL Stamps Page
    ${added_items}     Add N Stamps To Cart    ${stamp_from_1}    ${stamp_to_2}
    Go To Cart
    ${items_in_cart}    Get All Items From Cart    ${stamp_from_1}    ${stamp_to_2}
    Check Whether Items Correctly Added    ${items_in_cart}    ${added_items}
    Check Total and Delivery Fee in Cart Page
    Go To Shopping Page
    ${added_items}     Add N Stamps To Cart    ${stamp_from_2}    ${stamp_to_4}
    Go To Cart
    ${items_in_cart}    Get All Items From Cart    ${stamp_from_2}    ${stamp_to_4}
    Check Whether Items Correctly Added    ${items_in_cart}     ${added_items}
    Check Total and Delivery Fee in Cart Page
    Go To Checkout
    Sleep    5s