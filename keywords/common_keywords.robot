*** Keywords ***
Open Browser To Website
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window

Scroll To Element
   [Arguments]    ${locator}
   ${x}=    Get Horizontal Position    ${locator}
   ${y}=    Get Vertical Position    ${locator}
   Execute Javascript    window.scrollTo(${x}, ${y})



Click FOUR Buttons
    FOR    ${index}    IN RANGE    1    5   
        Click Element    xpath=//html/body/div[1]/div[2]/section[1]/div/div/div[2]/ul/li[${index}]/div/div[3]/div/button[contains(@class, 'AddToCartButton__AddButton')]
    END

Click on Cart 
    Click Element    xpath=/html/body/div[1]/header/div/div/div[2]/ul/li[2]/span/li/a