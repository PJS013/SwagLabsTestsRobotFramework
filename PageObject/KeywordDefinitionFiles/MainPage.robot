*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/TestData/TestData.robot
Resource    ../PageObject/Locators/Locators.robot

*** Keywords ***
Main Page Should Be Open
    wait until page contains element    ${MainPageContainter}    30s
    page should contain element         //span[contains(text(),"Products")]

Add Element
    [Arguments]    ${element}
    scroll element into view    //div[contains(text(), "${element}")]
    click button    //div[contains(text(), "${element}")]/parent::*/parent::*/following-sibling::*//button
    page should contain element    //div[@id="shopping_cart_container"]/a/span

Open Burger Menu
    click button    react-burger-menu-btn
    wait until page contains element    //a[contains(text(), "All Items")]
    page should contain element    //a[contains(text(), "All Items")]

Logout
    click element    //a[contains(text(), "Logout")]
    wait until page contains element    ${LoginInput}
