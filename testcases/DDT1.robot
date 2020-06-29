*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open MY browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***              username                    password
Right user with empty pwd       admin@yourstore.com         ${EMPTY}
Right user with wrong pwd       admin@yourstore.com         xyz
Wrong user with right pwd       adm@yourstore.com           admin
Wrong user with empty pwd       adm@yourstore.com           ${EMPTY}
Wrong user with wrong pwd       adm@yourstore.com           xyz

*** Keywords ***
Invalid login
    [Arguments]   ${username}     ${password}
    Input username  ${username}
    Input password  ${password}
    Click Login Button
    Error message should be visible