# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Кухонная техника -> Посудомоечные машины - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Электроника и техника -> Кухонная техника -> Посудомоечные машины"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по встраиваемым
    Когда я выбираю ссылку "Встраиваемые посудомоечные машины" в секции "Быстрый поиск"
       То ссылка содержит "builtin"
        * поле "Встраиваемая техника" отмечено

  Сценарий: Фильтр по машинам с сушкой
    Когда я выбираю ссылку "Посудомоечные машины с сушкой" в секции "Быстрый поиск"
       То ссылка содержит "dry"
        * поле "Сушка" отмечено
