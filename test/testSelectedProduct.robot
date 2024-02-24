*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Test Selected Product
    [Setup]    Open    ${urlSelectedProduct}    Chrome
    [Teardown]    Close
    scroll element into view    xpath:.//.//div[contains(@class,'app-catalog-1tp0ino e1k5a7g60')]//a[@data-meta-name = 'Snippet__title']
    click element   xpath:.//.//div[contains(@class,'app-catalog-1tp0ino e1k5a7g60')]//a[@data-meta-name = 'Snippet__title']
    element should be enabled    xpath:.//span[text() = 'В корзину']