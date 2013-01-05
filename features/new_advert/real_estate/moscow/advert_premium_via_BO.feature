# language:ru
# encoding: utf-8
Функционал: Создание премиума через БО - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Создание премиума через БО
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП

   Когда я перехожу на БО
       * на БО я перехожу в категорию "Объявления -> Создать премиум"
       * на странице дерева объявлений в БО я выбираю категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок -> Квартиры продажа"
       * при создании объявления я ввожу следующие данные:
          | parameter        | value                  |
          | Регион           | Москва                 |
          | Заголовок        | Тест создания премиума |
          | Текст объявления | Продаю квартиру        |
          | Цена             | 100500                 |
          | Валюта           | $                      |
          | Улица            | Интернациональная      |
          | Дом              | 10                     |
          | Комнат в квартире| 4                      |
          | Общая площадь    | 200                    |
          | Жилая площадь    | 150                    |
          | Площадь кухни    | 25                     |
          | Этаж             | 10                     |
          | Этажей в здании  | 10                     |
          | Санузел          | раздельный             |
          | Балкон/Лоджия    | да                     |
          | Материал стен    | панельный              |
          | Приватизированная квартира | да           |
          | Район города     | Поселок Внуково        |
          | Серия здания     | КОПЭ                   |
          | Высота потолков  | 4                      |
          | Ремонт           | евроремонт             |
          | Система водоснабжения | центральная       |
          | Система отопления     | центральная       |
          | Телефон          | да                     |
          | Газ в доме       | да                     |
          | Интернет         | да                     |
          | Лифты в здании   | да                     |
          | Мусоропровод     | да                     |
       * при создании объявления я указываю владельца пользователя с ролью "Доверенный интернет-партнер"
       * при создании премиума я выбираю "на 14 дней"
       * я сохраняю введенное объявление
      То на БО показано диалоговое окно "Запись добавлена"
       * я закрываю диалоговое окно
   Когда открыта страница для региона "Москва"
       * я перехожу в список моих объявлений
       * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       * в ЛК ИП объявление с названием "Тест создания премиума" присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
       * в ЛК ИП объявление с названием "Тест создания премиума" присутствует в списке
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда открыта страница для города "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
        * в ЛК ИП я выбираю регион "Все регионы"
        * в ЛК ИП открыт список объявлений пользователя
       То в ЛК ИП объявление с названием "Тест создания премиума" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100500" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Серия здания" равно "КОПЭ"
        * на вкладке "Все" "Материал стен" равно "панельный"
        * на вкладке "Все" "Высота потолков" равно "4 м"
        * на вкладке "Все" "Система водоснабжения" равно "центральная"
        * на вкладке "Все" "Система отопления" равно "центральная"
        * на вкладке "Все" присутствует "Газ в доме"
        * на вкладке "Все" присутствует "Лифты в здании"
        * на вкладке "Все" присутствует "Мусоропровод"
        * на вкладке "Все" "Жилая площадь" равно "150 кв.м"
        * на вкладке "Все" "Площадь кухни" равно "25 кв.м"
        * на вкладке "Все" "Ремонт" равно "евроремонт"
        * на вкладке "Все" "Санузел" равно "раздельный"
        * на вкладке "Все" присутствует "Телефон"
        * на вкладке "Все" присутствует "Интернет"
        * на вкладке "Все" присутствует "Балкон/Лоджия"
        * на вкладке "Все" присутствует "Приватизированная квартира"
        * на вкладке "Все" "Комнат в квартире" равно "4"
        * на вкладке "Все" "Общая площадь" равно "200 кв.м"
        * на вкладке "Все" "Этаж" равно "10"
        * на вкладке "Все" "Этажей в здании" равно "10"
        * адрес в объявлении равен "Москва, Интернациональная, 10"
    Когда на странице объявления я открываю вкладку "На карте"
       То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации
   Когда открыта страница для города "Москва"
       * на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Район     | Поселок Внуково |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов для недвижимости
       * в списке премиумов присутствует объявление "4 комн, 200/150/25 м2, этаж 10/10"
