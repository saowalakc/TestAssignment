*** Keywords ***
Open Page
    Open Browser    ${URL}  ${Browser}
    Wait Until Element Is Visible   ${SEARCHBOX}    20S

Search And Select Product
    [Arguments]     ${product}    
    ...    ${filter}    
    ...    ${productname}    
    ...    ${btnaddtocart}
    Click Element   ${SEARCHBOX}    
    Input Text      ${SEARCHBOX}  ${product}
    Click Element   ${BTNSEARCH}
    Wait Until Element Is Visible    ${FILTER}  10s
    Press Keys      NONE        PAGE_DOWN
    Sleep  5s
    Click Element   ${filter}
    Press Keys      NONE        PAGE_DOWN
    Sleep  5s
    Click Element   ${productname}
    Wait Until Element Is Visible   ${BTNADDTOCART}    10S     

Add to Cart
    [Arguments]     ${btnaddtocart}
    Click Element   ${btnaddtocart}   

Verify Product On Cart Page
    [Arguments]     ${cartproduct}
    Go To           ${URLCART}  
    Wait Until Element Is Visible    ${CART}
    Element Text Should Be      ${cartproduct}      