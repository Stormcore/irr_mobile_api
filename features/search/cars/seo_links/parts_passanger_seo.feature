# language:ru
# encoding: utf-8
@bugs @bug35582
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Для легковых автомобилей- seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Для легковых автомобилей"
        * на странице категории присутствует секция "Быстрый поиск"

  Структура сценария: Фильтр по модели
    Когда я делаю поиск по следующим параметрам:
          | parameter | value    |
          | Марка     | <модель> |
        * на странице поиска загружен список результатов
        * на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Для легковых автомобилей" если есть результаты поиска
    Когда я выбираю ссылку "для <модель>" в секции "Быстрый поиск"
       То ссылка содержит "<часть ссылки>"

  Примеры:
  | модель     | часть ссылки |
  | Audi       | audi         |
  | BMW        | bmw          |
  | Chevrolet  | chevrolet    |
  | Citroen    | citroen      |
  | Daewoo     | daewoo       |
  | Fiat       | fiat         |
  | Ford       | ford         |
  | Honda      | honda        |
  | Hyundai    | hyundai      |
  | Kia        | kia          |
  | Lexus      | lexus        |
  | Mazda      | mazda        |
  | Mitsubishi | mitsubishi   |
  | Nissan     | nissan       |
  | Opel       | opel         |
  | Peugeot    | peugeot      |
  | Renault    | renault      |
  | Skoda      | skoda        |
  | Subaru     | subaru       |
  | Suzuki     | suzuki       |
  | Toyota     | toyota       |
  | Volkswagen | volkswagen   |
  | Volvo      | volvo        |
  | ВАЗ        | vaz          |
