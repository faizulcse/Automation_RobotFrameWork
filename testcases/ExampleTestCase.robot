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

    ${"email_txt"}  set variable    id:Email
    ${"password"}  set variable    id:Password
    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    input text      ${"email_txt"}   pavanoltraining@gmail.com

    element should be visible   ${"password"}
    element should be enabled   ${"password"}
    input text      ${"password"}     Test@123

    click element   xpath://input[@class='button-1 login-button']
