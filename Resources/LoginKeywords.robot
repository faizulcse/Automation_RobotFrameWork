*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser  ${SiteUrl}    ${Browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    input text  ${username_field}   ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${password_field}   ${password}

Click SignIn
    click button    ${login_button}

Verify Successfull Login
    title should be  Find a Flight: Mercury Tours:

Close my Browsers
    clos all browsers