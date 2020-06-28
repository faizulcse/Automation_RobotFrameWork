*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://google.com/

*** Test Cases ***
Handling Alerts
    open browser    ${url}  ${browser}
    ${loc}=   get location
    log to console  ${loc}

    sleep   2
    go to   https://www.bing.com/
    ${loc}=   get location
    log to console  ${loc}

    sleep   2
    go back
    ${loc}=   get location
    log to console  ${loc}
    close browser
*** Keywords ***
