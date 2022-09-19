*** Settings ***
Documentation    Login To Swag Labs Website
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/LoginPage.robot
Resource    ../PageObject/KeywordDefinitionFiles/MainPage.robot

*** Test Cases ***
Test title
    [Tags]    Ready
    Open Browser To Starting Page
    Input Credentials    ${StandardLogin}    ${MutualPassword}
    Click Login Button
    Main Page Should Be Open
    [Teardown]    Close Browser


