*** Settings ***
Library  Selenium2Library


*** Keywords ***
Add Product To Cart
    Sleep  2
    Wait Until Page Contains  Home/Clothing/Men Clothing/Jeans/Jack & Jones Jeans>More by Jack & Jones
    set screenshot directory  ./Screenshots
    capture page screenshot  Product.png
    #Selecting size
    Click Element  xpath=//*[@id='sizeButtonsContainer']/div[2]/button[1]
    #Click on add to bag
    Click Element  xpath=//*[@id='mountRoot']/div/div/main/div[2]/div[2]/div[4]/button[2]
    Sleep  2
    #Click on go to bag
    Click Element  xpath=//*[@id='mountRoot']/div/div/main/div[2]/div[2]/div[4]/a