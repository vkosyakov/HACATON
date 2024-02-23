*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Login Test Case
    [Setup]    Open    ${urlLogin}    ${browserName}
    [Teardown]    Close
    Login    ${login}    ${password}



