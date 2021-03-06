# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Кухонная техника -> Пароварки - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Кухонная техника -> Пароварки
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Кухонная техника -> Пароварки"
        * на странице категории присутствует секция "Пароварки"
        * я заполняю ссылки в секции "Пароварки" с параметрами:
        | название | значение                           |
        | feature  | Электроника и техника -> Кухонная техника -> Пароварки |
        | category | Электроника и техника -> Кухонная техника -> Пароварки |
        | section  | Пароварки                          |
        | field    | Марка                              |
