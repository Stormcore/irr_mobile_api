# language:ru
# encoding: utf-8
Функционал: Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебные платья - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебные платья
      Когда на главной странице я перехожу в категорию "Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебные платья"
        * на странице категории присутствует секция "Стиль свадебного платья"
        * я заполняю ссылки в секции "Стиль свадебного платья" с параметрами:
        | название | значение                                                         |
        | feature  | Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебные платья |
        | category | Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебные платья |
        | section  | Стиль свадебного платья                                          |
        | field    | Стиль                                                            |
