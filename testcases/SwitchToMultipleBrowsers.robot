*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Alerts
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   1
    open browser    https://www.bing.com  ${browser}
    maximize browser window

    switch browser  1
    ${title}=  get title
    log to console  ${title}

    switch browser  2
    ${title1}=  get title
    log to console  ${title1}

    close all browsers
*** Keywords ***
