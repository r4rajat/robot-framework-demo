*** Settings ***
Documentation   Opens Browser
Library         SeleniumLibrary

*** Test Cases ***
Open Browser
    Open Browser    http://demo.sentrifugo.com/      Chrome
    Maximize Browser Window
Login
    Input Text      id=username         superadmin@example.com
    Input Text      id=password         sentrifugo
    Click Button    xpath=//input[@value='Log In']
Verify Login
    ${current_url}  Get Location
    Should Contain  ${current_url}  welcome
Do Recruitments
    Set Selenium Implicit Wait  2 seconds
    Click Link      id=19
    Click Button    xpath=//input[@value='Add Record']
    Select From List by Value  id=business_unit     1
    Select From List by Value  id=department        1
    Select From List by Value  id=reporting_id      3
    Select From List by Value  id=approver1      11
    Select From List by Value  id=approver2      10
    Select From List by Value  id=approver3      2
