*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Add Product in Cart
    open browser    https://www.citilink.ru/product/noutbuk-huawei-matebook-d-i5-1155g7-8gb-ssd256gb-15-6-ips-fhd-noos-gre-1936336/    Chrome
    wait until element is enabled    xpath:.//button[@class = 'e11w80q30 e4uhfkv0 app-catalog-zkoen2 e4mggex0']
    click element    xpath:.//button[@class = 'e11w80q30 e4uhfkv0 app-catalog-zkoen2 e4mggex0']
    wait until element contains    xpath:.//span[contains(text(),'Товар')]    Товар добавлен в корзину
    click element    xpath:.//a/button[@class = 'e4uhfkv0 css-gh3izc e4mggex0'][1]
    element should contain    xpath:.//a//span[text() = 'Корзина']    Корзина

