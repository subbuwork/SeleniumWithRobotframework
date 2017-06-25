*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  @{BROWSER}[0]
    Maximize Browser Window

End Web Test
    Close Browser