# encoding: utf-8

class CategoryPhotoOpticsTelescopesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/photo/optics/telescopes/"
  @category = "Фото, оптика -> Оптика -> Телескопы"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end
