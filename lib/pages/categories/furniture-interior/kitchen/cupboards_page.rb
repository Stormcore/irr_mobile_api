# encoding: utf-8

class CategoryFurnitureInteriorKitchenCupboardsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/kitchen/cupboards"
  @category = "Мебель, интерьер, обиход -> Мебель для кухни -> Кухонные шкафы, полки, столешницы"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_single_select "Вид", "type"
  irr_multi_select "Материал", "material"
  irr_range_select "Ширина, см", "width"
  irr_range_select "Глубина, см", "depth"
  irr_range_select "Высота, см", "height"
end
