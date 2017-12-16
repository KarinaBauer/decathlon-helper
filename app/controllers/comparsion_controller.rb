class ComparsionController < ApplicationController
	protect_from_forgery except: :index

	def create
		@rooturl = 'http://www.decathlon.ru'
		@items = []
		@urls = params[ :items ]

		unless @urls.nil?

			@urls.each do |url|
				@url = url
				@url = '' unless @url.include?('decathlon.ru')
				@url = '' if @url.nil?

				unless @url.empty?
					@page = Nokogiri::HTML(open(@url))
					price_block = @page.at_css('span#real_price_value')

					unless price_block.nil?
						@item_price = price_block.text.to_s[0..-4].scan(/\d+/).join.to_s
					else
						@item_price = ""
					end

					@items.push({
						articulus: @page.at_css("meta[itemprop='productID']")['content'].to_s,
						name: (@page.at_css('title').text.strip[0..-29].to_s).upcase,
						price: @item_price,
						image: @rooturl+@page.at_css('div#viewerImage img')['src'].to_s
					})
				end
			end

		else redirect_to '/'; end
	end

	def print
		@title = params[ :table ][ :title ]
		@items = params[ :table ][ :items ]
		@avantages = params[ :table ][ :avantages ]

		i = 0
		while i != 2
			@avantages.delete_at(0)
			i += 1
		end

		render 'view'
	end
end