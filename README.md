Структура автоетстов.
В папке resources описаны кейворды (resources.robot) и переменные (variables.py):

urlLogin = 'https://www.citilink.ru'
urlAddCart = 'https://www.citilink.ru/product/noutbuk-huawei-matebook-d-i5-12450h-16gb-ssd512gb-14-ips-fhd-noos-grey-2002275/'
urlSearch = 'https://www.citilink.ru/'
urlSelectedProduct = 'https://www.citilink.ru/search/?text=Ноутбуки'

URL нужны для проверки каждого функционала в отдельности

browserChrome = 'Chrome'
browserFFox = 'FireFox'
#Users
login = ''
password = ''

В папке test лежат chromedriver для Chrome и geckodriver для firefox и тесты.
test/testAddProduct.robot - проверка добавление товара в корзину
test/testLogin.robot - проверка авторизации пользователя 
test/testRegistrationOrder.robot - проверка оформления заказ авторизованным пользователем
test/testSearch.robot - проверка поиска товара через поисковую строку
test/testSelectedProduct.robot - проверка выбора товара из списка 
