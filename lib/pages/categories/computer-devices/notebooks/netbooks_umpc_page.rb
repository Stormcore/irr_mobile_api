# encoding: utf-8

class CategoryComputerDevicesNotebooksNetbooksUMPCPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/notebooks/netbooks_umpc"
  @category = "Компьютерная техника -> Ноутбуки -> Нетбуки и UMPC"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Марка", "make"
  irr_range_select "Диагональ экрана", "diagonal"
  irr_multi_select "Объем памяти", "ram_size"
  irr_range_select "Размер жесткого диска", "hdd"
  irr_multi_select "Тип видеокарты", "vgatype"
  irr_range_select "Время работы от батареи", "battery"
  irr_multi_select "Беспроводные интерфейсы", "wireless_interfaces_multi"
  irr_range_select "Вес", "weight"

  def get_parameter (field)
    case field
    when "Диагональ"
      return super(field).gsub(/ дюймов/, '')
    when "Объем памяти"
      return super(field).gsub(/ Мб/, '')
    when "Размер жесткого диска"
      return super(field).gsub(/ Гб/, '')
    when "Время работы от аккумулятора"
      return super(field).gsub(/ ч/, '')
    when "Вес"
      return super(field).gsub(/ кг/, '')
    else
      super(field)
    end
  end
end
