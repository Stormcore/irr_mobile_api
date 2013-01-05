# encoding: utf-8

class RealtyIrrRuNewsPage
  include PageObject

  div :section, xpath: "//div[./div[@class='s-title']" +
                          "[.//a[text()='Новости']]]"
  
  link :all_news do |page|
    page.section_element.link_element(text: "Все новости")
  end

  def get_news_items
    self.section_element.element.ps
  end

  def news_item_has_link(element)
    element.when_present.a.exists?
  end
end

class AutoIrrRuNewsPage < RealtyIrrRuNewsPage
  
  div :section, xpath: "//div[./div[@class='h1']" +
                          "[.//a[text()='Новости']]]"

  link :all_news do |page|
    page.section_element.link_element(text: "Новости")
  end

  def get_news_items
    self.section_element.element.as
  end

  def news_item_has_link(element)
    element.when_present.exists?
  end
end
