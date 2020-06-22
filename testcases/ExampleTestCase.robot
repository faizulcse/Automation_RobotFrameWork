*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}      http://demo.nopcommerce.com/

*** Test Cases ***

LoginTest to nopcommerce website
    open browser    ${url}  ${browser}
    maximize browser window
    loginToApplication
    close browser

*** Keywords ***

loginToApplication
    click link      xpath://a[@class='ico-login']
    input text      id:Email    pavanoltraining@gmail.com
    input text      id:Password     Test@123
    click element   xpath://input[@class='button-1 login-button']
