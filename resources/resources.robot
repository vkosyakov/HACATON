*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/variables.py

*** Keywords ***
Open
    [Arguments]    ${url}    ${browserName}
    open browser    ${url}    ${browserName}
    maximize browser window

Close
    close browser

Wait Enabled and Click
    [Arguments]    ${locator}
    wait until element is enabled    ${locator}
    click element    ${locator}

Wait Contains and Click
    [Arguments]    ${locatorWait}    ${textLocatotWait}    ${locatorClick}
    wait until element contains    ${locatorWait}    ${textLocatotWait}
    click element    ${locatorClick}

Login
    [Arguments]    ${login}    ${password}
    click element    xpath:.//span[@class = 'en3k2720 e106ikdt0 css-1y9ljh1 e1gjr6xo0' and text() = 'Войти'][1]
    input text    name:login    ${login}
    input text    name:pass    ${password}
    wait until element is enabled    xpath://button[@class = 'e4uhfkv0 css-1nvnwij e4mggex0']/span[text() = 'Войти']
    click element    xpath://button[@class = 'e4uhfkv0 css-1nvnwij e4mggex0']/span[text() = 'Войти']

Go to Shopping Cart
    #переход в корзину
    Wait Enabled and Click    xpath:.//div[@class = 'css-1wyvf5z eyoh4ac0']/span[text() ='Корзина'][1]
    get value    xpath:${price}
    #переход к оформлению заказа
    Wait Enabled and Click    xpath:.//button[@class = 'e4uhfkv0 css-ki69qx e4mggex0']


Check PVD
    Wait Enabled and Click    xpath:.//label/div[@class = 'fresnel-container fresnel-greaterThanOrEqual-tabletP 'and text() = 'Самовывоз']
    scroll element into view    xpath:.//h4[text() = 'Подтверждение и оплата']
    Wait Enabled and Click    xpath:.//span[contains(text(),'Выбрать')]
    sleep    5
    ${namePVD}=    get text    xpath:.//span[@data-meta-name = 'SelfDeliveryStoresList__title'][1]
    click element    xpath:.//span[@class = 'css-1xdhyk6 e1hf2t4f0' and text() = 'Выбрать']
    ${namePVD2}=    get text    xpath:.//span[@class = 'e1ys5m360 e106ikdt0 css-fscbmu e1gjr6xo0'][1]
    should be equal     ${namePVD}    ${namePVD2}

Check Confirmation and Payment
    scroll element into view    xpath:.//h4[text() = 'Подтверждение и оплата']
    click element    xpath:.//span[@class = 'e1ys5m360 e106ikdt0 css-fscbmu e1gjr6xo0' and text() = 'Система быстрых платежей - QR Code']

Checking the filling
    scroll element into view    xpath:.//span[text() = 'Проверка заполнения']
    click element    id:contactPaymentConfirm
Check get receipt
    scroll element into view    xpath:.//button[@class= 'e1jq023s0 css-tc9rhz e4mggex0']
    ${e-mail}=    get value    name:contactForCheck_email
    convert to string    ${e-mail}
    ${e-mail}    evaluate    "${e-mail}".lower()
    should be equal as strings    ${e-mail}   ${login}
