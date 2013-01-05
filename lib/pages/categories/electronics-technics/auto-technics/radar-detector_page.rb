# encoding: utf-8

class CategoryElectronicsTechnicsAutoTechnicsRadarDetectorPage < AdDetailsPage
  include PageObject
 
  @@url_suffix = "/electronics-technics/auto-technics/radar-detector"
  @category = "Электроника и техника -> Техника для авто -> Радар-детектор"
  
  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Диапазоны", "diapazoni"
  irr_multi_select "Марка", "make"
  irr_single_select "Режимы", "rejimi"
  irr_checkbox      "Детектор лазера", "detector_lazera"
  irr_checkbox      "Пеленг лазера 360 гр.", "peleng_lazera"
  irr_checkbox      "Функция голосового сообщения", "funkcija_golosovogo_soobshenija"
  irr_single_select "Тип дисплея", "tip_displeja"
  irr_checkbox      "AutoMute", "automute"
end
