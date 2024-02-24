*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Test Add Product in Cart
    [Setup]    Open    ${urlAddCart}    Chrome
    [Teardown]    Close
    Wait Enabled and Click    xpath:.//button[@class = 'e11w80q30 e4uhfkv0 app-catalog-zkoen2 e4mggex0']
    Wait Contains and Click    xpath:.//span[contains(text(),'Товар')]    Товар добавлен в корзину    xpath:.//a/button[@class = 'e4uhfkv0 css-gh3izc e4mggex0'][1]
    element should contain    xpath:.//a//span[text() = 'Корзина']    Корзина

