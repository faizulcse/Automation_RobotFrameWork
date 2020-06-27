*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium implicit wait  10

    ${implicit_wait}=   get selenium implicit wait
    log to console  ${implicit_wait}

    wait until page contains    Register
    select radio button     Gender      M
    input text  name:FirstName      Faizul
    input text  name:LastName       Islam
    input text  name:Email          faizulcse@gmail.com
    input text  name:Password       test@1234
    input text  name:ConfirmPassword    test@1234
    close browser

*** Keywords ***
