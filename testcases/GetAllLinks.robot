*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    http://www.newtours.demoaut.com/    headlesschrome
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}
    @{LinkItems}    create list
    : FOR   ${i}  IN RANGE    1   ${AllLinksCount}+1
    \   ${linksText}=   get text    xpath:(//a)[${i}]
    \   log to console  ${linksText}
    close browser
