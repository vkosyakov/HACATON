*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Login Test Case
    [Setup]    Open    ${urlLogin}    ${browserName}
    [Teardown]    Close
    Login    ${login}    ${password}
    Wait Enabled and Click    xpath:.//span[@class = 'en3k2720 e106ikdt0 css-1y9ljh1 e1gjr6xo0'][1]
    element should be enabled    xpath:.//a[@data-meta-name = 'ProfileMenu_Item_Выйти']



