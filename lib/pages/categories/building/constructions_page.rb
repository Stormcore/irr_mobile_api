# encoding: utf-8

class CategoryBuildingConstructionsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/constructions"
  @category = "Строительство и ремонт -> Готовые конструкции: дома, бани, срубы"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Тип конструкции", "type"
  irr_single_select "Порода дерева", "wood_species"
  irr_single_select "Материал", "construction_material"
  irr_checkbox     "Под ключ", "turn-key"
  irr_range_select "Ширина", "construction_width"
  irr_range_select "Длина", "construction_length"

  def get_parameter(field)
    case field
    when "Ширина", "Длина"
      super(field).gsub(/ мм/,'')
    else
      super(field)
    end
  end
end
