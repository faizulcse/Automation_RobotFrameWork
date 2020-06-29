
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver     ../TestData/LoginData.xlsx  sheet_name  Sheet1

Suite Setup  Open My Browser
Suite Teardown  Close browsers
Test Template  Invalid login

*** Test Cases ***
LoginTestWithExcel using ${username}    ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input password  ${password}