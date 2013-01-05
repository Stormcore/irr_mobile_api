# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Квартиры. Продажа -> Новостройки

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_new/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Новая 2х-комнатная квартира в Москве" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле              | значение |
        | Комнат в квартире | 3        |
        | Общая площадь     | 100 кв.м |
        | Жилая площадь     | 70 кв.м  |
        | Этаж              | 7        |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_new/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Новая 2х-комнатная квартира в Москве" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле              | значение |
        | Комнат в квартире | 3        |
        | Общая площадь     | 100 кв.м |
        | Жилая площадь     | 70 кв.м  |
        | Этаж              | 7        |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_new/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Новая 2х-комнатная квартира в Москве с фото" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления с кастомфилдами
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_new/scenario3.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю новую отлично обустроенную 2х-комнатную квартира в Москве" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
        * адрес в объявлении равен "Внуково, Интернациональная, 10"
        * шоссе в объявлении равно "Киевское, 5 км (от МКАД)"
        * на вкладке "Все" указаны следующие параметры:
          | поле                         | значение            |
          | АО                           | Поселок Внуково     |
          | Балкон/Лоджия                | x                   |
          | Высота потолков              | 3 м                 |
          | Газ в доме                   | x                   |
          | Год постройки/сдачи          | 2010 г.             |
          | До метро, км                 | 3 км                |
          | Жилая площадь                | 70 кв.м             |
          | Интернет                     | x                   |
          | Комнат в квартире            | 4                   |
          | Лифты в здании               | x                   |
          | Материал стен                | Кирпично-Монолитный |
          | Микрорайон                   | Внуково             |
          | Мусоропровод                 | x                   |
          | Направление                  | Киевское ш.         |
          | Общая площадь                | 100 кв.м            |
          | Охрана здания                | x                   |
          | Площадь кухни                | 15 кв.м             |
          | Приватизированная квартира   | x                   |
          | Район города                 | Внуково             |
          | Санузел                      | раздельный          |
          | Серия здания                 | КОПЭ-М/Парус        |
          | Система водоснабжения        | Центральная         |
          | Система отопления            | Центральная         |
          | Телефон                      | x                   |
          | Этаж                         | 4                   |
          | Этажей в здании              | 4                   |

  Сценарий: Импорт объявления в Бийске
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_new/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Новая 2х-комнатная квартира в Бийске" присутствует в списке
        * у объявления указан город "Бийск"

  Сценарий: Импорт объявления в Петербург c метро Адмиралтейская
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_new/scenario5.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Санкт-Петербург"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Новая 2х-комнатная квартира в Питере" присутствует в списке

    Когда я открываю детали этого объявления
       То в деталях объявления категории "Недвижимость -> Квартиры. Продажа -> Новостройки" "Станция метро" равно "Адмиралтейская"
