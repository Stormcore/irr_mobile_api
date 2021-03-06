# language:ru
# encoding: utf-8
@bugs @bug35582
Функционал: Авто и мото -> Легковые автомобили - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по лимузинам
    Когда я выбираю ссылку "Лимузины" в секции "Быстрый поиск"
       То ссылка содержит "limousine"
        * в поле "Тип кузова" выбраны следующие значения:
        | value   |
        | лимузин |

  Сценарий: Фильтр по кабриолетам
    Когда я выбираю ссылку "Кабриолеты" в секции "Быстрый поиск"
       То ссылка содержит "cabriolet"
        * в поле "Тип кузова" выбраны следующие значения:
        | value     |
        | кабриолет |

  Сценарий: Фильтр по купе
    Когда я выбираю ссылку "Купе, спорт-купе" в секции "Быстрый поиск"
       То ссылка содержит "coupe"
        * в поле "Тип кузова" выбраны следующие значения:
        | value |
        | купе  |
