# encoding: utf-8

class RealtyIrrRuCalendarPage
  include PageObject
  
  div :section, xpath: "//div[./div[@class='s-title']" +
                          "[.//a[text()='Календарь событий']]]"

  div :calendar_container do |page|
    page.section_element.div_element(id: "calendar-container")
  end
  div :calendar do |page|
    page.section_element.div_element(class: "wrapCalendar")
  end

  link :month_and_year do |page|
    page.calendar_element.div_element(class: "b-Mname").link_element
  end

  div :day do |page|
    page.calendar_element.cell_element(class: "td-act")
  end
end
