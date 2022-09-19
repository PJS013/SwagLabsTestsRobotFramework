*** Settings ***
Documentation    Login To Swag Labs Website
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/LoginPage.robot
Resource    ../PageObject/KeywordDefinitionFiles/MainPage.robot

*** Test Cases ***
Test title
    [Tags]    Ready1
    Open Browser To Starting Page
    Input Credentials    ${LockedOutLogin}    ${MutualPassword}
    Click Login Button
    Main Page Should Not Be Open
    [Teardown]    Close Browser


