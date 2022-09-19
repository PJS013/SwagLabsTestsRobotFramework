*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/TestData/TestData.robot
Resource    ../PageObject/Locators/Locators.robot

*** Keywords ***
Main Page Should Be Open
    wait until page contains element    ${MainPageContainter}    30s
    page should contain element         //span[containts(text(),"Products"]

Add Backpack
    click button    add-to-cart-sauce-labs-backpack
    page should contain element    //div[@id="shopping_cart_container"]/a/span