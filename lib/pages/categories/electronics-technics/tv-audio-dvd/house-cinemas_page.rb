# encoding: utf-8

class CategoryElectronicsTechnicsTVAudioDVDHouseCinemasPage < AdDetailsPage
  include PageObject
 
  @@url_suffix = "/electronics-technics/tv-audio-dvd/house-cinemas"
  @category = "Электроника и техника -> Аудио, Видео -> Домашние кинотеатры"
  
  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Марка", "make"
end
