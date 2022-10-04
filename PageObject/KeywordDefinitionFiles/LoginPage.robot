*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/TestData/TestData.robot
Resource    ../PageObject/Locators/Locators.robot

*** Keywords ***
Open Browser To Starting Page
    open browser                        ${Website}    ${Browser}
    maximize browser window
    wait until page contains element    ${LoginInput}

Input Credentials
    [Arguments]    ${Login}    ${Password}
    input text                          ${LoginInput}    ${Login}
    input text                          ${PasswordInput}    ${Password}

Click Login Button
    click element                       ${LoginButton}

Main Page Should Not Be Open
    page should contain    Epic sadface: Sorry, this user has been locked out.