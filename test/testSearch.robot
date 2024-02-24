*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Test Search Product
    [Setup]    Open    ${urlSearch}    Chrome
    [Teardown]    Close
    input text     xpath:.//input[@placeholder = 'Поиск по товарам']    Ноутбуки
    click element    xpath:.//button[@type='submit' and @class = 'css-c064wa ebli37a0']
    scroll element into view    xpath:.//.//div[contains(@class,'app-catalog-1tp0ino e1k5a7g60')]//a[@data-meta-name = 'Snippet__title']
    element should contain    xpath:.//.//div[contains(@class,'app-catalog-1tp0ino e1k5a7g60')]//a[@data-meta-name = 'Snippet__title']    Ноутбук