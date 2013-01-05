# encoding: utf-8

class CategoryCarsCommercialBusesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/cars/commercial/buses"
  @category = "Авто и мото -> Коммерческий транспорт -> Автобусы"

  irr_multi_select "Новый или подержанный", "used-or-new"
  irr_multi_select "Тип автобуса", "bus-type"
  irr_multi_select "Тип трансмиссии", "transmittion"
  irr_multi_select "Марка", "make"
  irr_multi_select "Модель", "model"
  irr_multi_select "Источник", "sourcefrom"
  irr_range_select "Год выпуска", "car-year"
  irr_text_field   "Число мест", "seats"

end
