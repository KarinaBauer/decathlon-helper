class EditController < ApplicationController
  protect_from_forgery except: :index

  def edit
    $url = params[:url]
    $url = '' if $url.nil?
    $rooturl = 'http://www.decathlon.ru'
    unless $url.length == 0
      @page = Nokogiri::HTML(open($url))

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
      icon = 'arrow.jpg'
      icon = $rooturl+picpart['src'].to_s unless picpart.nil?

      avant = {
        icon: icon,
        title: (expart.at_css('strong').text.strip.to_s).upcase,
        description: (expart.at_css('span').text.to_s).downcase
      }

      @avantages.push(avant)
      end

    else
      @item_data = $item_data; @avantages = $avantages
    end
  end

  def generate
    @item_data = params[:item_data]

    @icons = []
    params[:icons].each do |icon|
      if icon.nil?
        @icon = avantage[:icon]
      else
        uploaded_io = avantage[:icon_new]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
      @icon = '/uploads/'+uploaded_io.original_filename
      end; @icons.push(@icon)
    end

    @avantages = []
    params[:avantages].each do |avantage|

      avant = {
        icon: avantage[:icon],
        title: avantage[:title],
        description: avantage[:description]
      }

    @avantages.push(avant)
    end

  render 'generated/preview'
  end
end
