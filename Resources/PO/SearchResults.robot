*** Settings ***
Library  Selenium2Library


*** Keywords ***
Select Product
    Click Element  xpath=//*[@id='desktopSearchResults']/div[2]/section/ul/li[3]/a