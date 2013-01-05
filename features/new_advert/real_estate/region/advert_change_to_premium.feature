# language:ru
# encoding: utf-8
Функционал: Смена статуса объявления на премиум - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 4                                            |
          | Общая площадь     | 400                                          |
          | Этаж:              | 4                                            |
          | Цена               | 400000                                       |
          | Валюта             | $                                            |
          | Текст              | Тест изменения статуса на премиум            |
       * я перехожу на шаг 3
        
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "4-комн. кв., 4, площадь:  общая 400 кв. м." присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Новостройки" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
       * в ЛК ИП объявление с названием "4-комн. кв., 4, площадь:  общая 400 кв. м." присутствует в списке
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "4-комн. кв., 4, площадь:  общая 400 кв. м." присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Новостройки"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * в ЛК ИП я запоминаю значение поля "Премиум"
        * я делаю данное объявление премиумом на 14 дней
       То в ЛК ИП значение поля "Премиум" уменьшилось на единицу
        * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Новостройки" не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик объявлений ИП во всех разделах не изменился
        * счетчик количества размещенных объявлений в ЛК ИП не изменился

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value           |
          | Поданные      | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "4 комн, 400 м2, этаж 4"
