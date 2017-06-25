*** Settings ***
Library  Selenium2Library


*** Keywords ***
Search Product
    [Arguments]  ${search_key}
    set screenshot directory  ./Screenshots
    capture page screenshot  homepage.png
    Input Text  xpath=//header[@id='desktop-header-cnt']/div/div[3]/input  ${search_key}
    Click Element  xpath=//header[@id='desktop-header-cnt']/div/div[3]/a
    set screenshot directory  ./Screenshots
    capture page screenshot  SearchResults.png
