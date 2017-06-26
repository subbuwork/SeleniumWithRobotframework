*** Settings ***
Library  Selenium2Library
Resource  ./PO/TopSearch.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Product.robot
Resource  ./PO/Cart.robot
Resource  ./PO/LandingPage.robot

*** Variables ***

*** Keywords ***
Landing Page
    [Arguments]  ${start_url}
    LandingPage.Home Page  ${start_url}


Search for product
    [Arguments]  ${search_term}
    TopSearch.Search Product  ${search_term}

Select Product
    SearchResults.Select Product

Add Product To Cart
    Product.Add Product To Cart

Verify Cart
    Cart.Bag

Proceed To CheckOut
    Cart.Proceed To CheckOut