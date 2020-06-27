*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDows and Lists
    open browser    ${url}  ${browser}
    maximize browser window
#    set selenium speed  2seconds
    select from list by label   continents  USA
    select from list by index   continents  6
    select from list by label   selenium_commands  Switch Commands
    unselect from list by label   selenium_commands  Switch Commands
    close browser

*** Keywords ***
