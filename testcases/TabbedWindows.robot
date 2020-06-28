*** Settings ***
Library     SeleniumLibrary

*** Variables ***
*** Test Cases ***
Tabbed Windows Test
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    maximize browser window
    click element   xpath://button[contains(text(), 'click')]
    sleep   1
    select window   title=Sakinalium | Home
    sleep   1
    ${"contact_link"}     set variable    xpath://*[contains(text(), 'contact')]
    element should be visible   ${"contact_link"}
    click element    ${"contact_link"}
    sleep   2
    close all browsers

*** Keywords ***
