# encoding: utf-8

class CategoryElectronicsTechnicsTVAudioDVDRadioReceiversPage < AdDetailsPage
  include PageObject
 
  @@url_suffix = "/electronics-technics/tv-audio-dvd/radio-receivers"
  @category = "Электроника и техника -> Аудио, Видео -> Радиоприемники"
  
  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Марка", "make"
end
