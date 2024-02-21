*** Settings ***
Resource    ../imports/resource.robot
Resource    ../keywords/common_keywords.robot
Resource    ../keywords/variables.robot

*** Test Cases ***
Open Website Test
    Open Browser To Website    ${URL}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=${accept_policy_button_xpath}    timeout=5s
    Click Element    xpath=${accept_policy_button_xpath}
    ${href_value}=    Get Element Attribute    xpath=${all_stamps_button_xpath}   href
    Go To  ${href_value}
    Click FOUR Buttons
    Click on Cart
    Sleep  3s
    [Teardown]    Close Browser
