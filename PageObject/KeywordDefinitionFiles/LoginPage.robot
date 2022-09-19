*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/TestData/TestData.robot
Resource    ../PageObject/Locators/Locators.robot

*** Keywords ***
Open Browser To Starting Page
    open browser                        ${Website}    ${Browser}
    wait until page contains element    ${LoginInput}

Input Credentials
    input text                          ${LoginInput}    ${Login}
    input text                          ${PasswordInput}    ${Password}

Click Login Button
    click element                       ${LoginButton}