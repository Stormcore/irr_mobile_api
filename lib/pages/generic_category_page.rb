# encoding: utf-8

class GenericCategoryPage
  include PageObject

  element :left_banner, :embed
  
  link :subcategory_select, link_text: "Выбор подрубрики"
  
  def select_sub_category(category)
    # Read parent ID for subcategory_select
    subcategory_id = self.subcategory_select_element.parent.element.attribute_value("id")
    expected_popupList_id = "bcPopup#{subcategory_id}"
    
    # Hover on subcategory_select link
    self.subcategory_select_element.when_present.element.hover
    
    # Wait for list to appear
    popupDiv = self.div_element(id: "#{expected_popupList_id}")
    subcategories_list = self.popupDiv.when_present.unordered_list_element
    subcategories_list.when_present.link_element(link_text: /#{category}/).when_present.click
  end
end
