*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Selected Product
    open browser    https://www.citilink.ru/search/?text=Ноутбуки    Chrome
    scroll element into view    xpath:.//.//div[contains(@class,'app-catalog-1tp0ino e1k5a7g60')]//a[@data-meta-name = 'Snippet__title']
    click element   xpath:.//.//div[contains(@class,'app-catalog-1tp0ino e1k5a7g60')]//a[@data-meta-name = 'Snippet__title']
    element should be enabled    xpath:.//span[text() = 'В корзину']