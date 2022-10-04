*** Settings ***
Documentation    Add Products To Cart
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/LoginPage.robot
Resource    ../PageObject/KeywordDefinitionFiles/MainPage.robot
Test Template    Add Elements To Cart

*** Test Cases ***
Test Run
    [Tags]    Ready
    Test.allTheThings() T-Shirt (Red)
    Sauce Labs Onesie
    Sauce Labs Bolt T-Shirt
    Sauce Labs Fleece Jacket
    Sauce Labs Backpack
    Sauce Labs Bike Light

*** Keywords ***
Add Elements To Cart
    [Arguments]    ${item}
    Open Browser To Starting Page
    Input Credentials    ${StandardLogin}    ${MutualPassword}
    Click Login Button
    Main Page Should Be Open
    Add Element    ${item}
    [Teardown]    Close Browser


