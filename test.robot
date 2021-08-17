*** Settings ***
Library         Selenium2Library
Library         BuiltIn
Library         String
Resource        keyword.robot
Resource        data_resource.robot
Suite Teardown  Close All Browsers
Library         ExtendedSelenium2Library

*** Test Cases ***
Search And Add Product To Cart
    [Tags]    success
    Open Page
    Search And Select Product1
    Add to Cart1
    Search And Select Product2
    Add to Cart2

Verify Shopping Cart
    Verify Product On Cart Page      ${CARTPRODUCT1}
    Verify Product On Cart Page      ${CARTPRODUCT2}

