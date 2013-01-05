# encoding: utf-8

class CategoryElectronicsTechnicsKitchenDishwashersPage < AdDetailsPage
  include PageObject
 
  @@url_suffix = "/electronics-technics/kitchen/dishwashers"
  @category = "Электроника и техника -> Кухонная техника -> Посудомоечные машины"
  
  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Марка", "make"
  irr_checkbox     "Встраиваемая техника", "fridge_builtin"
  irr_single_select "Объем загрузки, комплектов", "washmach_vol"
  irr_checkbox     "Сушка", "washmach_dry"
end
