*** Settings ***
Documentation    Add Products To Cart
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/LoginPage.robot
Resource    ../PageObject/KeywordDefinitionFiles/MainPage.robot

*** Test Cases ***
Test title
    [Tags]    Ready1
    Open Browser To Starting Page
    Input Credentials    ${StandardLogin}    ${MutualPassword}
    Click Login Button
    Main Page Should Be Open
    Add Backpack
    [Teardown]    Close Browser


