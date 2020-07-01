*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}      http://www.newtours.demoaut.com/
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    Open my Browser  ${url}     ${browser}
    Enter UserName  ${user}
    Enter Password  ${pwd}
    Click SignIn
    sleep  3
    Verify Successfull Login
    close my browsers