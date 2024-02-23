*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Test Registration Order
    [Setup]    Open    ${urlLogin}    ${browserName}
    [Teardown]    Close
    Login    ${login}    ${password}
    Go to Shopping Cart and Registration Order
