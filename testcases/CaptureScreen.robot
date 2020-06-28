*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    maximize browser window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    capture element screenshot  id:txtUsername    /Users/pcworld/PycharmProjects/Automation/screenshot/username.png
    capture element screenshot  xpath://*[@id="divLogo"]/img    /Users/pcworld/PycharmProjects/Automation/screenshot/logo.png
    capture page screenshot     /Users/pcworld/PycharmProjects/Automation/screenshot/login_tc.png
    close browser
*** Keywords ***
