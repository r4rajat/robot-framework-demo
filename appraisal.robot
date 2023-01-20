*** Settings ***
Documentation   Bot for doing appraisals in a HRM Solution
Library         SeleniumLibrary

*** Variables ***
${BROWSER}          Chrome
${TEST_URL}         http://demo.sentrifugo.com/
${TEST_USER_ID}     superadmin@example.com
${TEST_USER_PASS}   sentrifugo

*** Test Cases ***
Open Chrome Browser
    Open Browser                    ${TEST_URL}                 ${BROWSER}
    Maximize Browser Window
    Sleep                           2s
Login
    Input Text                      id=username                 ${TEST_USER_ID}
    Input Text                      id=password                 ${TEST_USER_PASS}
    Click Button                    xpath=//input[@value='Log In']
Verify Login
    ${CURRENT_URL}                  Get Location
    Should Contain                  ${CURRENT_URL}  welcome
Do Appraisals
    Set Selenium Speed              0.5 seconds
    Click Link                      id=149
    Click Button                    xpath=//input[@value='Add Record']
    Select From List by Value       id=businessunit_id           1
    Select From List by Value       id=department_id             1
    Select From List by Value       id=from_year                 2022
    Select From List by Value       id=to_year                   2023
    Select From List by Value       id=appraisal_mode            Half-yearly
    Input Text                      id=managers_due_date         01/20/2023
    Select From List by Value       id=eligibility               3
    Select From List by Value       id=category_id               2
    Select From List by Value       id=appraisal_ratings         1
    Click Button                    id=submitbutton
Verify Appraisal Done
    Page Should Contain             Appraisal process added successfully
Test Teardown
    Close Browser