# encoding: utf-8

class CategoryGardenFireplaceChimneysPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/fireplace/chimneys"
  @category = "Все для дачи -> Камины, печи -> Дымоходы"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end
