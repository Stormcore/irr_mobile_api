# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость > Дома, дачи, участки. Продажа > Участки

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_out-of-town_lands/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продается участок, общая площадь: 20 соток" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле            | значение |
        | Площадь участка | 200 сот  |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_out-of-town_lands/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается участок, общая площадь: 20 соток" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле            | значение |
        | Площадь участка | 200 сот  |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "real-estate_out-of-town_lands/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается участок, общая площадь: 20 соток с фото" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления в Бийске
    Когда я обновляю и импортирую файл "real-estate_out-of-town_lands/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается участок в Бийске, общая площадь: 20 соток" присутствует в списке
        * у объявления указан город "Бийск"
