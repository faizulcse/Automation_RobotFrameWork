*** Settings ***
*** Test Cases ***

TC1 User RegistrationTest
    [Tags]  regression  faizul  aapon
    log to console  THis is user reg test
    log to console  User registration test is over

TC2 Login Test
    [Tags]  sanity
    log to console  This mis login test
    log to console  Login test is over

TC3 Change user settings
    [Tags]  regression
    log to console  THis is changing user settings test
    log to console  Change user settings test is over

TC4 Logout Test
    [Tags]  sanity
    log to console  This is logout test
    log to console  Logout test is over