
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver     ../TestData/LoginData.csv

Suite Setup  Open My Browser
Suite Teardown  Close browsers
Test Template  Invalid login

*** Test Cases ***
LoginTestWithCSV using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input password  ${password}