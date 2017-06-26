*** Settings ***
Library  Selenium2Library


*** Keywords ***
Add Product To Cart
    Wait Until Page Contains  Home/Accessories/Unisex Accessories/Smart Watches/NOISE Smart Watches>More by NOISE
    set screenshot directory  ./Screenshots
    capture page screenshot  Product.png
    #Selecting size
    Click Element  xpath=//*[@id='sizeButtonsContainer']/div[2]/button[1]
    #Click on add to bag
    Click Element  xpath=//*[@id='mountRoot']/div/div/main/div[2]/div[2]/div[4]/button[2]
    #Click on go to bag
    Click Element  xpath=//*[@id='mountRoot']/div/div/main/div[2]/div[2]/div[4]/a