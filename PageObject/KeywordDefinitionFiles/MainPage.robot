*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/TestData/TestData.robot
Resource    ../PageObject/Locators/Locators.robot

*** Keywords ***
Main Page Should Be Open
    wait until page contains element    ${MainPageContainter}