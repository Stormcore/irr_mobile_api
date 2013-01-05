# encoding: utf-8

class CategoryElectronicsTechnicsTVAudioDVDReceiverPage < AdDetailsPage
  include PageObject
 
  @@url_suffix = "/electronics-technics/tv-audio-dvd/receivers"
  @category = "Электроника и техника -> Аудио, Видео -> Ресиверы"
  
  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Марка", "make"
end
