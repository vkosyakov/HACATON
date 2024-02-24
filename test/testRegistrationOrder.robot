*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Test Go to Shopping Cart and Registration Order by Autorized User
    [Setup]    Open    ${urlLogin}    ${browserName}
    [Teardown]    Close
    Login    ${login}    ${password}\
    #Переход в корзину
    Go to Shopping Cart
    #Провекра пункта выдачи заказа
    Check PVD
    #Проверка раздела "Подтверждение и оплата"
    Check Confirmation and Payment
    #Проверка поля заполнения
    Checking the filling
    #Проверка чека
    Check get receipt


