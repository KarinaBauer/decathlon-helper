class EditController < ApplicationController
  protect_from_forgery except: :index
  def edit
    #$url = 'https://www.decathlon.ru/kurtka-sibir-100-muzh-id_8374543.html'
    $url = params[:url]
    $url = '' if $url.nil?
    $rooturl = 'https://www.decathlon.ru'
    @page = Nokogiri::HTML(open($url)) unless $url.length == 0

    if $url.length == 0
      @item_data = {
        articulus: 'артикул',
        name: 'НАИМЕНОВАНИЕ ТОВАРА',
        price: 'Цена',
        image: 'img.jpg'
      }
      @avantages = [
        {icon: 'arrow.jpg', title: 'ХАРАКТЕРИСТИКА', description: 'описание'},
        {icon: 'arrow.jpg', title: 'ХАРАКТЕРИСТИКА 2', description: 'описание 2'}
      ]

    else
      @item_data = {
        articulus: @page.at_css("meta[itemprop='productID']")['content'].to_s,
        name: (@page.at_css('span#productName').text.to_s).upcase,
        shortname: (@page.at_css('title').text.strip[0..-29].to_s).upcase,
        price: @page.at_css('span#real_price_value').text.to_s[0..-7].scan(/\d+/).join.to_s,
        image: $rooturl+@page.at_css('div#viewerImage img')['src'].to_s
      }

      @avantages = []
      @page.at_css('.list_avantage').css('.row').each do |row|
      expart = row.at_css("div[class='tablecell explanationpart']")
      picpart = row.at_css("div[class='tablecell pictopart']").at_css('img')

      if picpart.nil?
        icon = 'arrow.jpg'
      else
        icon = $rooturl+picpart['src'].to_s
      end

      avant = {
        icon: icon, title: (expart.at_css('strong').text.strip.to_s).upcase,
        description: (expart.at_css('span').text.to_s).downcase
      }
      @avantages.push(avant)
      end
    end
  end
end
