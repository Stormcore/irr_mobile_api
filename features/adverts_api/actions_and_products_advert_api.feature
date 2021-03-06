# language: ru
# encoding: utf-8

Функционал: Действия и продукты

  Сценарий: Получение списка платных продуктов для объявления
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | X6                              |
        | Цена                       | 100000                          |
        | Валюта                     | USD                             |
        | Год выпуска                | 2012                            |
        | Марка                      | BMW                             |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +8999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я получаю список платных продуктов для объявления
      * я проверяю список платных продуктов для объявления
      
  Сценарий: Получение списка бесплатных действий над объявлением
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | X6                              |
        | Цена                       | 100000                          |
        | Валюта                     | USD                             |
        | Год выпуска                | 2012                            |
        | Марка                      | BMW                             |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +8999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я получаю список бесплатных действий над объявлением
      * я проверяю список бесплатных действий над объявлением
      
  Сценарий: Голосование за объявление (повышение рейтинга)
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | X6                              |
        | Цена                       | 100000                          |
        | Валюта                     | USD                             |
        | Год выпуска                | 2012                            |
        | Марка                      | BMW                             |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +8999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я повышаю рейтинг объявления
      
  Сценарий: Голосование за объявление (понижение рейтинга)
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | X6                              |
        | Цена                       | 100000                          |
        | Валюта                     | USD                             |
        | Год выпуска                | 2012                            |
        | Марка                      | BMW                             |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +8999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я понижаю рейтинг объявления