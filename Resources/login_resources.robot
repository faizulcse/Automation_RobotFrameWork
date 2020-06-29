*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open My Browser
    open browser    ${LOGIN URL}   ${BROWSER}
    maximize browser window

Close browsers
    close all browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]  ${username}
    input text  id:Email    ${username}

Input password
    [Arguments]  ${password}
    input text  id:Password    ${password}

Click Login Button
    click element    xpath://input[@class='button-1 login-button']

Click Logout Link
    click link  Logout

Error message should be visible
    page should contain     Login was unsuccessful

Dashboard page should be visible
    page should contain Dashboard