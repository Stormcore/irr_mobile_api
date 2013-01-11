# language: ru
# encoding: utf-8

Функционал: Редактирование объявления

  Сценарий: Редактирование объявление
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | A8                              |
        | Цена                       | 100000                          |
        | Валюта                     | USD                             |
        | Год выпуска                | 2006                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +7999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я редактирую в объявлении следующие данные:
        | parameter                  | value                           |
        | Модель                     | A6                              |
        | Цена                       | 80000                           |
        | Валюта                     | EUR                             |
        | Год выпуска                | 2008                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | пикап                           |
        | Тип трансмиссии            | вариатор                        |
      * я проверяю, что в объявлении содержатся следующие данные:
        | parameter                  | value                           |
        | Модель                     | A6                              |
        | Цена                       | 80000                           |
        | Валюта                     | EUR                             |
        | Год выпуска                | 2008                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | пикап                           |
        | Тип трансмиссии            | вариатор                        |