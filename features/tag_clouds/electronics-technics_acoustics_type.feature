# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Аудио, Видео -> Акустические системы (Тип акустки) - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Аудио, Видео -> Акустические системы
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Аудио, Видео -> Акустические системы"
        * на странице категории присутствует секция "Тип акустки"
        * я заполняю ссылки в секции "Тип акустки" с параметрами:
        | название | значение    |
        | feature  | Электроника и техника -> Аудио, Видео -> Акустические системы (Тип акустки) |
        | category | Электроника и техника -> Аудио, Видео -> Акустические системы |
        | section  | Тип акустки |
        | field    | Тип         |
