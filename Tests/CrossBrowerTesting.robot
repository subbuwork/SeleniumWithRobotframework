*** Settings ***
Library  Selenium2Library

*** Variables ***
${url} =  https://www.myntra.com

*** Test Cases ***
Cross Browser Test1
    Log  ${url}
    OPEN BROWSER  ${url}  edge
    close browser
Cross Browser Test2

    OPEN BROWSER  ${url}  ff
    close browser
Cross Browser Test3

    OPEN BROWSER  ${url}  gc
    close browser
Cross Browser Test4

    OPEN BROWSER  ${url}  ie
    close browser