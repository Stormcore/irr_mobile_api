# language:ru
# encoding: utf-8
@smoketest
Функционал: Полнотекстовый поиск

  Контекст:
      Когда открыта страница для региона "Россия"

  Сценарий: Поиск по авто
    Когда я ищу "авто"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
#        * в каждом объявлении содержится "авто"
        * сначала отображаются премиум-объявления
#        * в каждом объявлении присутствует искомое слово
        * в каждом объявлении не более 150 знаков

  Сценарий: Поиск по этажу
    Когда я ищу "этаж"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
#        * в каждом объявлении содержится "этаж"
        * сначала отображаются премиум-объявления
#        * в каждом объявлении присутствует искомое слово
        * в каждом объявлении не более 150 знаков
