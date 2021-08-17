*** Keywords ***
Open Page
    Open Browser    ${URL}  ${Browser}
    Wait Until Element Is Visible   ${SEARCHBOX}    20S

Search And Select Product1
    Click Element   ${SEARCHBOX}
    Input Text      ${SEARCHBOX}  ${PRODUCT}
    Click Element   ${BTNSEARCH}
    Sleep  5s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Click Element   ${FilterTVA}
    Sleep  5s
#    Press Keys      NONE        PAGE_DOWN
#    Sleep  2s
    Click Element   ${PRODUCT1}
    Wait Until Element Is Visible  ${Product1LVD}  15s
#    Click Element   ${filter}
#    Press Keys      NONE        PAGE_DOWN
#    Sleep  5s
#    Click Element   ${productname}
#    Wait Until Element Is Visible   ${BTNADDTOCART}    20S
Search And Select Product2
    Click Element   ${SEARCHBOX}
    Input Text      ${SEARCHBOX}  ${PRODUCT}
    Click Element   ${BTNSEARCH}
    Sleep  5s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Press Keys      NONE        PAGE_DOWN
    Sleep  3s
    Click Element   ${FilterTVB}
    Sleep  5s
#    Press Keys      NONE        PAGE_DOWN
#    Sleep  2s
    Click Element   ${PRODUCT2}
    Wait Until Element Is Visible  ${Product2LVD}  15s

Add to Cart1
    Click Element   ${BTNADDTOCART1}
    Sleep  7s

Add to Cart2
    Click Element   ${BTNADDTOCART2}
    Sleep  7s

Verify Product On Cart Page
    [Arguments]     ${cartproduct}
    Go To           ${URLCART}  
    Wait Until Element Is Visible    ${CART}  5s
#    Element Text Should Be      ${cartproduct}
