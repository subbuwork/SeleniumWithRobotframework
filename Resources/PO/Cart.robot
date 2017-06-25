*** Settings ***
Library  Selenium2Library

*** Keywords ***
Bag
    Wait Until Page Contains  My Shopping Bag
    set screenshot directory  ./Screenshots
    capture page screenshot  Cart.png

Proceed To CheckOut
    Click Button  xpath=html/body/div[1]/div[3]/div/div[1]/div[3]/div[2]/div[1]/button[2]
    Wait Until Page Contains  Login to Myntra
    set screenshot directory  ./Screenshots
    capture page screenshot  LoginPage.png
