*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Myntra.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
*** Variables ***
@{BROWSER} =  firefox  gc  ie  edge
${START_URL} =  https://www.myntra.com
${SEARCH_TERM} =  mens wear

*** Test Cases ***
Test_Landing_Page
    [Tags]  home
    Myntra.Landing Page  ${START_URL}
Test_Search_product
    [Tags]  search
    Myntra.Landing Page  ${START_URL}
    Myntra.Search for product  ${SEARCH_TERM}
    wait until page contains  Men's Wear
Test_Select_Product
    [Tags]  select
    Myntra.Landing Page  ${START_URL}
    Myntra.Search for product  ${SEARCH_TERM}
    wait until page contains  ${SEARCH_TERM}
    Myntra.Select Product
Test_Add_Product_To_cart
    [Tags]  cart
    Myntra.Landing Page  ${START_URL}
    Myntra.Search for product  ${SEARCH_TERM}
    set selenium implicit wait  2
    wait until page contains  ${SEARCH_TERM}
    set selenium implicit wait  2
    Myntra.Select Product
    set selenium implicit wait  2
    Myntra.Add Product To Cart
    set selenium implicit wait  2
    Myntra.Verify Cart
    set selenium implicit wait  2
    Myntra.Proceed To CheckOut