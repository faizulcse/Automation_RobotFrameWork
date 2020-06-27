*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
MyTest Case
    open browser    ${url}     ${browser}
    maximize browser window

    open browser    https://www.fb.com    ${browser}
    maximize browser window

    close all browsers
*** Keywords ***
