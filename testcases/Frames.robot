*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/

*** Test Cases ***
Handling Alerts
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame

    select frame    packageFrame
    click link      JavascriptExecutor
    unselect frame

    close browser
*** Keywords ***
