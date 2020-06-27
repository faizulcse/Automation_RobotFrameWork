*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser        ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link          xpath://a[@class='ico-login']
    title should be     nopCommerce demo store. Login

    ${"email_txt"}  set variable    id:Email
    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    input text      ${"email_txt"}   pavanoltraining@gmail.com
    sleep   5
    clear element text      ${"email_txt"}
    sleep   5
    close browser

*** Keywords ***
