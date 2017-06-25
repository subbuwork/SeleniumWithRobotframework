*** Settings ***
Library  Selenium2Library

*** Keywords ***
Home Page
    [Arguments]  ${url}
    Go To  ${url}
    set screenshot directory  ./Screenshots
    capture page screenshot  LandingPage.png