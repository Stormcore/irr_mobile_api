# language:ru
# encoding: utf-8
Функционал: Недвижимость -> Дома, дачи, участки. Аренда - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Недвижимость -> Дома, дачи, участки. Аренда
      Когда на главной странице я перехожу в категорию "Недвижимость -> Дома, дачи, участки. Аренда"
        * на странице категории присутствует секция "Тип строения"
        * я заполняю ссылки в секции "Тип строения" с параметрами:
        | название | значение                           |
        | feature  | Недвижимость -> Дома, дачи, участки. Аренда |
        | category | Недвижимость -> Дома, дачи, участки. Аренда |
        | section  | Тип строения                       |
        | field    | Строение                           |
