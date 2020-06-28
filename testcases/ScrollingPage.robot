*** Settings ***
Library    SeleniumLibrary

*** Variables ***
*** Test Cases ***
 ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
#    execute javascript  window.scrollTo(0, 1500)
#    scroll element into view    xpath://*[contains(text(), 'Bangladesh')]
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep  2
    execute javascript  window.scrollTo(0, -document.body.scrollHeight)
    sleep   2
    close browser
*** Keywords ***
