# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Пылесосы - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Электроника и техника -> Пылесосы"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по моющим пылесосам
    Когда я выбираю ссылку "Моющие пылесосы" в секции "Быстрый поиск"
       То ссылка содержит "wash"
        * поле "Моющие" отмечено
