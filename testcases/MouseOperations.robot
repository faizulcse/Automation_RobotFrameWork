*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
MouseActions
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html      chrome
    maximize browser window
    # Right click/ open context menu
    open context menu   xpath://*[contains(text(), 'right click me')]
#    sleep 2
    # Double click action
    go to   http://testautomationpractice.blogspot.com/
    double click element   xpath://button[contains(text(), 'Copy Text')]
#    sleep  2
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop   id:box6     id:box106
#    sleep  2
    close browser
*** Keywords ***
