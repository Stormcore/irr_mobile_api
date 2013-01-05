# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Материалы -> Изоляционные материалы - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Материалы -> Изоляционные материалы"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по гидроизоляции
    Когда я выбираю ссылку "Гидроизоляция" в секции "Быстрый поиск"
       То ссылка содержит "hydro"
        * в поле "Тип изоляции" выбраны следующие значения:
          | value  |
          | гидро- |

  Сценарий: Фильтр по теплоизоляции
    Когда я выбираю ссылку "Теплоизоляция" в секции "Быстрый поиск"
       То ссылка содержит "heat"
        * в поле "Тип изоляции" выбраны следующие значения:
          | value  |
          | тепло- |

  Сценарий: Фильтр по шумоизоляции
    Когда я выбираю ссылку "Шумоизоляция" в секции "Быстрый поиск"
       То ссылка содержит "noise"
        * в поле "Тип изоляции" выбраны следующие значения:
          | value |
          | шумо- |

  Сценарий: Фильтр по теплошумоизоляции
    Когда я выбираю ссылку "Теплошумоизоляция" в секции "Быстрый поиск"
       То ссылка содержит "heat-noise"
        * в поле "Тип изоляции" выбраны следующие значения:
          | value      |
          | теплошумо- |
