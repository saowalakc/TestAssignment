*** Settings ***
Library         SeleniumLibrary
Library         BuiltIn
Library         String
Resource        keyword.robot
Resource        data_resource.robot
Suite Teardown  Close All Browsers


*** Test Cases ***
Search And Add Product To Cart
    [Tags]    success
    Open Page
    Search And Select Product    ${PRODUCT}    ${FILTER1}    ${PRODUCT1}    ${BTNADDTOCART1}
    Add to Cart             ${BTNADDTOCART1}
    Search And Select Product    ${PRODUCT}    ${FILTER2}    ${PRODUCT2}    ${BTNADDTOCART2} 
    Add to Cart            ${BTNADDTOCART2} 

Verify Shopping Cart
    Verify Product On Cart Page      ${CARTPRODUCT1}
    Verify Product On Cart Page      ${CARTPRODUCT2}

    