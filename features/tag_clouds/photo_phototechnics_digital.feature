# language:ru
# encoding: utf-8
Функционал: Фото, оптика -> Фототехника -> Фотоаппараты цифровые - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Фото, оптика -> Фототехника -> Фотоаппараты цифровые
      Когда на главной странице я перехожу в категорию "Фото, оптика -> Фототехника -> Фотоаппараты цифровые"
        * на странице категории присутствует секция "Марки фотоапаратов"
        * я заполняю ссылки в секции "Марки фотоапаратов" с параметрами:
        | название | значение                                |
        | feature  | Фото, оптика -> Фототехника -> Фотоаппараты цифровые |
        | category | Фото, оптика -> Фототехника -> Фотоаппараты цифровые |
        | section  | Марки фотоапаратов                                   |
        | field    | Марка                                   |
