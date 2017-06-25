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
    LandingPage.Home Page  ${START_URL}


Search for product
    TopSearch.Search Product  ${SEARCH_TERM}

Select Product
    SearchResults.Select Product

Add Product To Cart
    Product.Add Product To Cart

Verify Cart
    Cart.Bag

Proceed To CheckOut
    Cart.Proceed To CheckOut