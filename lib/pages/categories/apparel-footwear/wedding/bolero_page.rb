# encoding: utf-8

class CategoryApparelFootwearWeddingBoleroPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/apparel-footwear/wedding/bolero"
  @category = "Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебные шубки, накидки"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end
