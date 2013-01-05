# encoding: utf-8
require './lib/pages/ad_details_page.rb'

class AddAdvertStep2 < AdDetailsPage
  include PageObject

  select_list :region, id: "fr-region"
  text_field  :address_city, name: "address_city"
  text_field  :address_street, name: "mapStreetVisible"
  text_field  :address_house, name: "mapHouseNr"
  text_field  :address_metro, name: "metro"
  text_field  :address_sosshe, name: "sosshe"
  select_list :rent_period, name: "rent_period"

  select_list :mark, name: "make"
  select_list :model, name: "model"
  select_list :currency, name: "currency"
  select_list :car_year, name: "car-year"
  select_list :bodytype, name: "bodytype"
  select_list :transmission, name: "transmittion"
  text_field :price, name: "price"
  text_field :model_text, name: "model"
  text_field :mark_other, name: "make_other"
  text_field :model_other, name: "model_other"

  text_field :f_title, id: "f_title"
  text_field :f_text, id: "f_text"
  file_field :upload, id: "input-file-upload"
  unordered_list :uploaded_photos, id: "photos"

  text_field :videoContents, id: "video_content"
  link :add_video, class: "btn-add-video"
  div :video_preview, id: "videoContentBlock"

  link :save, id: "submit-edit-form"
  button :next_step, id: "next_link"

  div :has_package, class: "ico-messagesok"

  span :error_message, id: "adv-errorMessage"

  def set_street(street)
    begin
      self.address_street = street
      self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                               "[contains(@style,'display: block')]//a").when_present.click
    rescue Selenium::WebDriver::Error::InvalidElementStateError => e
      sleep 1
      retry
    end
  end

  def set_shosse(shosse)
    self.address_shosse = shosse
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_house(house)
    self.address_house = house
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end
  
  #В данный момент не используется-сохранен как шаблон
  def set_mark(control, hash)
    if control.parent.parent.element.div(class: "ik_select_link").exists?
      set_value_for_custom(self.mark_element, hash)
    else
      self.mark_element.select(hash['value'])
    end
  end

  def set_metro(metro)
    self.address_metro = metro
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_city(city)
    self.address_city = city
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_value_for_custom(control, hash)
    # По типу следующего контрола устанавливаем значение
    case control.tag_name
    when "select"
      # Комбобокс
      #Ожидание прогрузки элементов комбобокса
      if control.parent.parent.element.div(class: "ik_select_link").exists?
        control.parent.parent.element.div(class: "ik_select_link").click
        list = self.div_elements(class: "ik_select_list_inner").find{|div| div.visible?}
        sleep(3)
        if list.span_element(text: hash['value']).exists?
          list.span_element(text: hash['value']).click
        else
          puts "Список достуных значений: #{list.element.spans.map{|s| s.text}}"
          raise "Не найдено значение '#{hash['value']}'"
        end
      else
        #TODO: Распечатка допустимых значений
        control.select(hash['value'])
      end
      
    when "input"
      control.value = hash["value"]
    else
      # Текстбокс и комбобокс - разделены ~
      control.value = hash["value"].split(" ~ ")[0]
      set_value_for_custom(control.parent.parent.select_list, hash['value'].split(" ~ ")[1])
    end
  end

  def set_custom_parameter(hash)
    # Ищем ближайший контрол по hash['parameter']
    # Сначала checkbox
    begin
      self.checkbox_element(xpath: "//label[contains(.,'#{hash['parameter']}')]/input").check
    rescue Watir::Exception::UnknownObjectException => e
      label = self.label_element(text: /#{hash['parameter']}/, class: "b-form-LK_control-label")
      control_id = label.element.attribute_value("for")
      if control_id.empty?
        control = label.parent.element.input
        unless control.exists?
          control = label.parent.element.select_list
        end
      else
        control = self.div_element(id: "customfields").element.element(id: control_id)
      end
      set_value_for_custom(control.to_subtype, hash)
    end
  end

  def set_parameter(hash)
    begin
      case hash['parameter']
      when "Населённый пункт"
        self.set_city hash['value']
      when "Улица"
        self.set_street hash['value']
      when "Дом"
        self.set_house hash['value']
      when "Ближайшее метро"
        self.set_metro hash['value']
      when "Заголовок"
        self.f_title = hash['value']
      when "Срок сдачи"
        self.rent_period = hash['value']
      when "Валюта"
        set_value_for_custom(self.currency_element, hash)
      when "Год выпуска"
        set_value_for_custom(self.car_year_element, hash)
      when "Марка"
        if hash['value'].split(" ~ ")[0] == 'Другая'
          self.mark = 'Другая'
          self.mark_other = hash['value'].split(" ~ ")[1]
        else
          #Случай для страницы редактирования (теряет актуальность при обработке случая в set_value_for_custom) 
          #self.set_mark(self.mark_element, hash)
          set_value_for_custom(self.mark_element, hash)
        end
      when "Модель"
        if self.model?
          if hash['value'].split(" ~ ")[0] == 'Другая'
            self.model = "Другая"
            self.model_other = hash['value'].split(" ~ ")[1]
          else
            set_value_for_custom(self.model_element, hash)
          end
        else
          self.model_text = hash['value']
        end
      when "Текст"
        self.f_text = hash['value']
      when "Тип кузова"
        set_value_for_custom(self.bodytype_element, hash)
      when "Тип трансмиссии"
        set_value_for_custom(self.transmission_element, hash)
      when "Цена"
        self.price = hash['value']
      else
        self.set_custom_parameter(hash)
      end
    rescue Exception => e
      raise "Ошибка установки параметра #{hash['parameter']} = '#{hash['value']}':\n#{e}"
    end
  end

  def load_photo
    # Загружаем файл из URL
    Net::HTTP.start("mandroid.ru") do |http|
      resp = http.get("/sites/default/files/imagecache/full-node-news/softattached/irr.png")
      open("/tmp/logo_irr.png", "wb") do |file|
        file.write(resp.body)
      end
    end
    # Указываем этот файл
    el_id = self.upload_element.element.id
    @browser.execute_script("document.getElementById('#{el_id}').setAttribute('class', '')")
    self.upload_element.element.set "/tmp/logo_irr.png"
    # Ждём пока появится загруженная фотография
    self.uploaded_photos_element.
         list_item_element(id: "downloaded-photo-1").when_present(30).
         image_element.exists?
  end

  def load_video
    # См. http://tp.prontosoft.by//Project/Planning/Task/View.aspx?TaskID=38786&ProjectID=30031
    # Рандомно вставляем youtube или vimeo видео
    videos = ["http://www.youtube.com/watch?v=3VLcLH97eRw", 
              "http://vimeo.com/13212659", 
              "http://youtu.be/I1qHVVbYG8Y", 
             ]
    video_url = videos[Random.rand(videos.length)]
    puts "DEBUG: Вставляем видео #{video_url}"
    self.videoContents_element.when_present.value = video_url

    self.add_video
    #Watir::Wait.until {self.video_preview?}
    # Ждём 5 секунд
    sleep 5
  end

  def save
    self.save_element.when_present.click
  end

  def has_package_message
    begin
      self.div_element(id: "customfields").div_element(class: "b-message-info").when_present.exists?
    rescue
      return false
    end
  end

  def get_package_message
    self.div_element(id: "customfields").div_element(class: "b-message-info").text
  end

  def ensure_additional_parameters_are_displayed
    unless self.div_element(class: "b-form-LK_other-params").visible?
      self.link_element(text: "Дополнительные характеристики").click
    end
  end

  def ensure_section_is_visible(name)
    self.div_elements(class: "b-form-LK_wrap_tabs_item").find{|div| 
      div.div_element(class: "b-form-LK_wrap_tabs_item_title_wrap", text: name).exists?
    }.click
  end

end
