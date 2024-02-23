*** Settings ***
Library     SeleniumLibrary 
Suite Setup     Open Browser To Website
Resource    ../keywords/variables.robot
Resource    ../keywords/common_keywords.robot

*** Test Cases ***
Open Website Test
    Go To ALL Stamps Page
    Select Stamps Get Their Data Go to Cart Get All Data and Validate Test Cases     ${stamp_from_1}    ${stamp_to_2}
    Go To Shopping Page
    Select Stamps Get Their Data Go to Cart Get All Data and Validate Test Cases     ${stamp_from_2}    ${stamp_to_4}
    Go To Checkout
    Sleep    2s