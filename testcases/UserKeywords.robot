*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${url}      http://newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${pageTitle}=   launchBrowser   ${url}      ${browser}
    log to console  ${pageTitle}
    log  ${pageTitle}
    input text  name:userName   mercury
    input text  name:password   mercury
    close browser

