# language: ru
# encoding: utf-8

Функционал: Профиль

  Сценарий: Регистрация нового пользователя
    Когда я регистрирую пользователя с ролью "Новый пользователь" посредством API
    
  Сценарий: Восстановление пароля
    Когда я восстанавливаю пароль пользователя с ролью "Обычный пользователь 1" посредством API

  Сценарий: Профиль обычного пользователя
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я запоминаю данные профиля
      То в ответе должно быть указано имя пользователя
      * в ответе отображен статус обычного пользователя
    
  Сценарий: Профиль интернет-партнера
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер 1" посредством API
      То я запоминаю авторизационный токен
      * я запоминаю данные профиля
      То в ответе отображен статус интернет-партнера
      
  Сценарий: Изменение профиля
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я заполняю профиль пользователя случайными данными