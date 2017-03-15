class BalisageController < ApplicationController
  protect_from_forgery except: :index

	def create
		@item = Item.new
		@icons = Icon.all
		@url = params[ :url ]
		@@rooturl = 'http://www.decathlon.ru'

		unless @url.nil?
			if @url.include?(@@rooturl[7..-1])
				@page = Nokogiri::HTML(open(@url))
				price_block = @page.at_css('span#real_price_value')
				avants_block = @page.at_css('.list_avantage')

				unless price_block.nil?
						@item_price = price_block.text.to_s[0..-7].scan(/\d+/).join.to_s
				else  @item_price = ""
				end

				@data_from_page = {
					articulus: @page.at_css("meta[itemprop='productID']")['content'].to_s,
					name: (@page.at_css('span#productName').text.to_s).upcase,
					shortname: (@page.at_css('title').text.strip[0..-29].to_s).upcase,
					price: @item_price,
					image: @@rooturl+@page.at_css('div#viewerImage img')['src'].to_s
				}

				unless avants_block.nil?
					@avantages_from_page = []

					avants_block.css('.row').each do |row|
						picpart = row.at_css("div[class='tablecell pictopart']").at_css('img')
						expart = row.at_css("div[class='tablecell explanationpart']")

						unless picpart.nil?
								@icon = @@rooturl+picpart['src'].to_s
						else  @icon = $std_icon
						end

						avant = {
							icon: @icon,
							title: (expart.at_css('strong').text.strip.to_s).upcase,
							description: (expart.at_css('span').text.to_s).downcase
						}

						@avantages_from_page.push(avant)
					end

				else  @avantages_from_page = $avantages_null
				end

			else  @data_from_page = $item_data; @avantages_from_page = $avantages_null; end
		else	redirect_to '/'; end
	end


	def print
		#@item = Item.new(item_params)
		#@item.save

		unless params[ :addedNewPrice ].nil?
				@old_price = params[ :item ][ :old_price ].to_f
				@new_price = params[ :item ][ :new_price ].to_f
				@discount = (((( @new_price - @old_price ) / @old_price ) * 100 ) * 1 ).to_i unless @old_price == 0.0
		else	@new_price = params[ :item ][ :old_price ]
		end

		unless params[ :balisageFormat ] == 'wideA3'
				render 'viewCommon'
		else	render 'viewWideformat'
		end

	end


	private
		def item_params
			params.require(:item).permit(:image, :name, :articulus, :price, avantages: [:title, :description])
		end

		def avant_params
			params.require(:item).permit(avantages: [:title, :description])
		end

		def icon_params
			params.require(:icons).permit(:icon)
		end
end
