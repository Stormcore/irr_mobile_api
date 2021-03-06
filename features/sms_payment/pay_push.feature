# language:ru
# encoding: utf-8
Функционал: ОП - Поднятие - Авто и мото -> Легковые автомобили -> Автомобили с пробегом

@advert_submit
  Сценарий: Подача объявления для ОП через БО
   Когда открыта страница для города "Усть-Алтан"
       * я вхожу под пользователем с ролью "Обычный пользователь 3"
       * я перехожу в список моих объявлений

      То в ЛК ОП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ОП
       * я запоминаю количество неактивных объявлений ОП

    Когда я перехожу на БО
        * на БО я перехожу в категорию "Объявления -> Каталог объявлений"
        * на странице дерева объявлений в БО я выбираю категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом -> авто с пробегом"
        * я созданию новое объявление в БО
        * при создании объявления я ввожу следующие данные:
          | parameter            | value          |
          | Заголовок            | Продаю Ауди A4 |
          | Регион               | Усть-Алтан     |
          | Марка                | Audi           |
          | Модель               | A4             |
          | Цена                 | 40000          |
          | Валюта               | $              |
          | Год выпуска          | 1994           |
          | Тип кузова           | кабриолет      |
          | Тип трансмиссии      | автоматическая |
          | Текст объявления     | Продаю ауди    |

        * при создании объявления я указываю владельца пользователя с ролью "Обычный пользователь 3"
        * я сохраняю введенное объявление
        * открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Обычный пользователь 3"
        * я перехожу в список моих объявлений

       То в ЛК ОП объявление с названием "Продаю Ауди A4" присутствует в списке
        * в ЛК ОП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" увеличился на 1
        * счетчик объявлений ОП во всех разделах увеличился на 1
        * счетчик объявлений пользователя увеличился на 1
        * счетчик количества размещенных объявлений в ЛК ОП не изменился
        * счетчик количества неактивных объявлений в ЛК ОП увеличился на 1

    Когда в ЛК ОП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ОП
        * я запоминаю количество неактивных объявлений ОП
        * в ЛК ОП объявление с названием "Продаю Ауди A4" присутствует в списке
        * я размещаю данное объявление
        * в ЛК ОП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" не изменился
        * счетчик объявлений ОП во всех разделах не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик количества размещенных объявлений в ЛК ОП увеличился на 1
        * счетчик количества неактивных объявлений в ЛК ОП уменьшился на 1
    Когда я перехожу в список моих объявлений
        * в ЛК ОП объявление с названием "Продаю Ауди A4" присутствует в списке
        * я поднимаю данное объявление
    Когда на странице оплаты я выбираю SMS
        * я перехожу на БО
        * я отсылаю SMS для оплаты
        * открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Обычный пользователь 3"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продаю Ауди A4" присутствует в списке
