# encoding: utf-8

class CategorySportsTourismSportsWintersportsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/sports-tourism/sports/wintersport"
  @category = "Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Зимний инвентарь"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "type"
  irr_single_select "Тип снаряжения", "wintersport_equip"
end

