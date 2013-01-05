# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автосервис и услуги -> Ремонт и сервис легковых автомобилей

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Автосервис и услуги -> Ремонт и сервис легковых автомобилей"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Продаю 1  |
          | Цена               | 15000                     |
          | валюта             | руб.                      |
          | Тип предложения    | продам                    |
          | Текст              | Продаю                    |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
        
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Автосервис и услуги -> Ремонт и сервис легковых автомобилей"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Продаю 2  |
          | Цена               | 200                       |
          | валюта             | $                         |
          | Тип предложения    | продам                    |
          | Текст              | Услуги по ремонту         |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
        
      То в ЛК ИП открыт список объявлений пользователя
