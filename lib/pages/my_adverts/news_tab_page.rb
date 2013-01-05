# encoding: utf-8

class MyAdvertsNewsTabPage
  include PageObject

  def has_section_displayed(name)
    self.span_element(text: name).when_present.exists?
  end
end

