# encoding: utf-8

class LoginPage
  include PageObject

  div :popupWrap, id: "popup-wrap"
  text_field (:username)  {|page| page.popupWrap_element.text_field_element(name:'login')}
  text_field (:password)  {|page| page.popupWrap_element.text_field_element(name:'password')}
  checkbox (:remember_me) {|page| page.popupWrap_element.checkbox_element(name:'is_remember_me')}
  link (:login)           {|page| page.popupWrap_element.link_element(class: 'loginFormSubmit')}

  paragraph :incorrect_login_message, class: "authFailedMessage", index: 1
  paragraph :inactive_irr_user_message, class: "authUserIrrNoactive", index: 1
  link      (:support) {|page| page.inactive_irr_user_message_element.link_element}
  paragraph :inactive_user_message, class: "authUserNoactive", index: 1
  link      :inactive_user_link, id: "sendActivationKey"

  def login_as(username, password, remember_me)
    self.username_element.when_present
    self.username = username
    self.password = password
    self.remember_me_element.check if remember_me
    self.login
  end
end
