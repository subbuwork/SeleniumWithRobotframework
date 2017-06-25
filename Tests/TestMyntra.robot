*** Settings ***
Library  Selenium2Library
Resource  Resources/Myntra.robot
Resource  Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
*** Variables ***
@{BROWSER} =  firefox  gc  ie  edge
${START_URL} =  https://www.myntra.com
${SEARCH_TERM} =  Men's Wear

*** Test Cases ***
Test_Landing_Page
    [Tags]  home
    Myntra.Landing Page
Test_Search_product
    [Tags]  search
    Myntra.Landing Page
    Myntra.Search for product
    wait until page contains  ${SEARCH_TERM}
Test_Select_Product
    [Tags]  select
    Myntra.Landing Page
    Myntra.Search for product  mens wear
    wait until page contains  Men's Wear
    Myntra.Select Product
Test_Add_Product_To_cart
    [Tags]  cart
    Myntra.Landing Page
    Myntra.Search for product  mens wear
    wait until page contains  Men's Wear
    Myntra.Select Product
    Myntra.Add Product To Cart
    Myntra.Verify Cart
    Myntra.Proceed To CheckOut