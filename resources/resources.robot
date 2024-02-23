*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open
    [Arguments]    ${urlLogin}    ${browserName}
    open browser    ${urlLogin}    ${browserName}
    maximize browser window

Close
    close browser
Wait and Click
    [Arguments]    ${locator}
    wait until element is enabled    ${locator}
    click element    ${locator}

Login
    [Arguments]    ${login}    ${password}
    click element    xpath:.//span[@class = 'en3k2720 e106ikdt0 css-1y9ljh1 e1gjr6xo0' and text() = 'Войти'][1]
    input text    name:login    ${login}
    input text    name:pass    ${password}
    wait until element is enabled    xpath://button[@class = 'e4uhfkv0 css-1nvnwij e4mggex0']/span[text() = 'Войти']
    click element    xpath://button[@class = 'e4uhfkv0 css-1nvnwij e4mggex0']/span[text() = 'Войти']

Go to Shopping Cart and Registration Order
    Wait and Click    xpath:.//div[@class = 'css-1wyvf5z eyoh4ac0']/span[text() ='Корзина'][1]
    Wait and Click    xpath:.//button[@class = 'e4uhfkv0 css-ki69qx e4mggex0']
    wait until element contains    xpath:.//span[text() = 'Оформление заказа']    Оформление заказа
    element should contain    xpath:.//div/span[text() = 'Владислав Косяков']    Владислав Косяков
    click element    xpath:.//label/div[@class = 'fresnel-container fresnel-greaterThanOrEqual-tabletP 'and text() = 'Самовывоз']
    scroll element into view    xpath:.//h4[text() = 'Подтверждение и оплата']
    click element    xpath:.//button/span[@class = 'css-1xdhyk6 e1hf2t4f0' and text() = 'Выбрать другой пункт самовывоза']
    sleep    5
    ${namePVD}=    get text    xpath:.//span[@class = 'e1ys5m360 e106ikdt0 css-fscbmu e1gjr6xo0' and @data-meta-name = 'SelfDeliveryStoresList__title']
    click element    xpath:.//span[@class = 'css-1xdhyk6 e1hf2t4f0' and text() = 'Выбрать']
    ${namePVD2}=    get text    xpath:.//span[@class = 'e1ys5m360 e106ikdt0 css-fscbmu e1gjr6xo0'][1]
    should be equal     ${namePVD}    ${namePVD2}

