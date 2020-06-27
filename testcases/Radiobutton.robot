*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing radio buttons and check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds

    # selecting radio buttons
    select radio button     sex     Female
    select radio button     exp     5

    # selecting check box
    select checkbox     BlackTea
    select checkbox     RedTea

    # unselecting check box
    unselect checkbox     BlackTea
    unselect checkbox     RedTea

    close browser
*** Keywords ***
