# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Другое - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Другое"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по козам
    Когда я выбираю ссылку "Козы" в секции "Быстрый поиск"
       То ссылка содержит "goat"
        * значение в поле "Ключевые слова" равно "коза"

  Сценарий: Фильтр по коровам
    Когда я выбираю ссылку "Коровы" в секции "Быстрый поиск"
       То ссылка содержит "cow"
        * значение в поле "Ключевые слова" равно "корова"

  Сценарий: Фильтр по лошадям
    Когда я выбираю ссылку "Лошади" в секции "Быстрый поиск"
       То ссылка содержит "horse"
        * значение в поле "Ключевые слова" равно "лошадь"

  Сценарий: Фильтр по пчёлам
    Когда я выбираю ссылку "Пчёлы" в секции "Быстрый поиск"
       То ссылка содержит "bee"
        * значение в поле "Ключевые слова" равно "пчелы"
