class EditController < ApplicationController
  protect_from_forgery except: :index

  def index
    @item = Item.new
    $url = params[:url]
    $url = '' if $url.nil?
    $rooturl = 'http://www.decathlon.ru'
    unless $url.length == 0
      @page = Nokogiri::HTML(open($url))

      @data_from_page = {
        articulus: @page.at_css("meta[itemprop='productID']")['content'].to_s,
        name: (@page.at_css('span#productName').text.to_s).upcase,
        shortname: (@page.at_css('title').text.strip[0..-29].to_s).upcase,
        price: @page.at_css('span#real_price_value').text.to_s[0..-7].scan(/\d+/).join.to_s,
        image: $rooturl+@page.at_css('div#viewerImage img')['src'].to_s
      }

      @avantages_from_page = []
      @page.at_css('.list_avantage').css('.row').each do |row|

        picpart = row.at_css("div[class='tablecell pictopart']").at_css('img')
        expart = row.at_css("div[class='tablecell explanationpart']")
        unless picpart.nil?
          @icon = $rooturl+picpart['src'].to_s
        else
          @icon = $std_icon
        end

        avant = {
          icon: @icon,
          title: (expart.at_css('strong').text.strip.to_s).upcase,
          description: (expart.at_css('span').text.to_s).downcase
        }

        @avantages_from_page.push(avant)
      end
    else; @data_from_page = $item_data; @avantages_from_page = $avantages; end
  end


  def generate
    @item = Item.new(item_params)
    @avantage = @item.avantages.create(avantage_params)

=begin
    @icons = []
    params[:avantages].each do |avantage|
      if avantage[:new_icon].nil?
        @icon = avantage[:icon]
      else
        uploaded_io = avantage[:new_icon]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
      @icon = '/uploads/'+uploaded_io.original_filename
      end; @icons.push(@icon)
    end
=end

  @item.save
  redirect_to 'generated/preview'
  end

  private
    def item_params
      params.require(:item).permit(:image, :name, :articulus, :price, :avantages)
    end

    def avantage_params
      params.require(:avantages).permit(:icon, :title, :description)
    end
end
