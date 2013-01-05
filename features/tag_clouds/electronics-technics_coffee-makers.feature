# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Кухонная техника -> Кофеварки и кофемашины - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Кухонная техника -> Кофеварки и кофемашины
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Кухонная техника -> Кофеварки и кофемашины"
        * на странице категории присутствует секция "Кофеварки и кофемашины"
        * я заполняю ссылки в секции "Кофеварки и кофемашины" с параметрами:
        | название | значение                                                            |
        | feature  | Электроника и техника -> Кухонная техника -> Кофеварки и кофемашины |
        | category | Электроника и техника -> Кухонная техника -> Кофеварки и кофемашины |
        | section  | Кофеварки и кофемашины                                              |
        | field    | Марка                                                               |
