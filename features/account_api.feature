# language: ru
# encoding: utf-8

Функционал: Профиль

  Сценарий: Логин обычного пользователя
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я проверяю данные в профиле
      То в ответе должно быть указано имя пользователя
      * в ответе отображен статус обычного пользователя
    
  Сценарий: Логин интернет-партнера
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер 1" посредством API
      То я запоминаю авторизационный токен
      * я проверяю данные в профиле
      То в ответе отображен статус интернет-партнера
      
  Сценарий: Изменение профиля
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я заполняю профиль пользователя следующими параметрами