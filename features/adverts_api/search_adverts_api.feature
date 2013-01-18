# language: ru
# encoding: utf-8

Функционал: Поиск

  Сценарий: Получение объявлений определенной категории
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я получаю объявления определенной категории со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Валюта                     | RUR                             |
        | Сдвиг                      | 1                               |
        | Ограничение                | 3                               |
        | Сортировать по             | quality_index:desc              |
        | Включить частные           | true                            |
        | Включить коммерческие      | true                            |
  
  Сценарий: Получение популярных объявлений определенной категории
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я получаю популярные объявления определенной категории со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Валюта                     | RUR                             |
        
  Сценарий: Поиск объявления по критериям
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я осуществляю поиск объявлений по следующим критериям:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Валюта                     | RUR                             |
        | Марка                      | Audi                            |
        | Сдвиг                      | 1                               |
        | Ограничение                | 3                               |
        | Сортировать по             | quality_index:desc              |
        | Ключевые слова             | автомобиль                      |
        
  Сценарий: Получение объявления
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | A4                              |
        | Цена                       | 300000                          |
        | Валюта                     | RUR                             |
        | Год выпуска                | 2003                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +7999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я получаю объявление с заданным идентификатором
      * я проверяю, что в объявлении содержатся следующие данные:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | A4                              |
        | Цена                       | 300000                          |
        | Валюта                     | RUR                             |
        | Год выпуска                | 2003                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +7999999999                     |
        | Контактное лицо            | Автор объявления                |
        
  Сценарий: Получение своих объявлений
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | A4                              |
        | Цена                       | 300000                          |
        | Валюта                     | RUR                             |
        | Год выпуска                | 2003                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +7999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я получаю список своих объявлений
      * я проверяю, что в списке полученных объявлений есть объявление с таким идентификатором
      
  Сценарий: Получение объявлений пользователя
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я получаю объявления пользователя "9531918"