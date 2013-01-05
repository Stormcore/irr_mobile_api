# language:ru
# encoding: utf-8
Функционал: Товары для детей -> Товары для школы - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Товары для детей -> Товары для школы
      Когда на главной странице я перехожу в категорию "Товары для детей -> Товары для школы"
        * на странице категории присутствует секция "Школьные товары"
        * я заполняю ссылки в секции "Школьные товары" с параметрами:
        | название | значение                             |
        | feature  | Товары для детей -> Товары для школы |
        | category | Товары для детей -> Товары для школы |
        | section  | Школьные товары                      |
        | field    | Тип                                  |
