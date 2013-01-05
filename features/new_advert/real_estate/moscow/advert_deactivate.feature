# language:ru
# encoding: utf-8
Функционал: Деактивация объявления - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Деактивация объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

    Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value                |
          | Регион                     | Москва               |
          | Населённый пункт           | Москва               |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | Приватизированная квартира | x                    |
          | Комнат в квартире          | 9                    |
          | Общая площадь, кв.м        | 800                  |
          | Этаж                       | 8                    |
          | Этажей в здании            | 8                    |
          | Цена                       | 800000               |
          | Валюта                     | $                    |
          | Текст                      | Тест деактивации объявления |
       * я перехожу на шаг 3
        
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "9-комн. квартира, Интернациональная улица, 10, 8/8 общая 800 кв. м., приватизированная" присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
       * в ЛК ИП объявление с названием "8-комн. квартира, Интернациональная улица, 10, 8/8 общая 800 кв. м., приватизированная" присутствует в списке
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "9-комн. квартира, Интернациональная улица, 10, 8/8 общая 800 кв. м., приватизированная" присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * я запоминаю количество неактивных объявлений ИП
        * я деактивирую данное объявление
       То статус созданного объявления равен "неактивно"
        * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик объявлений ИП во всех разделах не изменился
        * счетчик количества размещенных объявлений в ЛК ИП уменьшился на 1
        * счетчик количества неактивных объявлений в ЛК ИП увеличился на 1

@after_index
  Сценарий: Проверка индексации
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я делаю поиск по следующим параметрам:
            | parameter | value           |
            | Район     | Поселок Внуково |
            | Поданные  | вчера и сегодня |
        * на странице поиска загружен список результатов для недвижимости
        * в списке объявлений отсутствует объявление "9-комн. квартира, Интернациональная улица, 10, 8/8 общая 800 кв. м., приватизированная"
