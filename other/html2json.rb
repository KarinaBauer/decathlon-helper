#!/usr/bin/env ruby
require 'open-uri'; require 'nokogiri'; require 'json'

puts "Enter URL:"
url = "https://www.decathlon.ru/kurtka-sibir-100-muzh-id_8374543.html"#gets.chomp
rooturl = url[0..23] #корневой url
page = Nokogiri::HTML(open(url))

item_data = {
			 'articulus' => page.at_css("meta[itemprop='productID']")['content'].to_i,
			 'name' => page.at_css('title').text.strip[0..-29],
			 'price' => page.at_css('span#real_price_value').text.to_s[0..-7].scan(/\d+/).join.to_i,
			 'image' => rooturl+page.at_css('div#viewerImage img')['src'].to_s
}

# парсинг пункта "техническая информация"
techinfo = []
page.at_css("div[class='list_infos_tech']").css('.row').each do |row|
cell = row.at_css("div[class='tablecell']")

cell = {
				#'icon' => rooturl+picpart.at_css('img')['src'].to_s,
				'title' => cell.at_css('strong').text.strip,
				'description' => cell.at_css('span').text
}
techinfo.push(cell)
end

# парсинг пункта "преимущества"
avantages = []
page.at_css('.list_avantage').css('.row').each do |row|
expart = row.at_css("div[class='tablecell explanationpart']")
picpart = row.at_css("div[class='tablecell pictopart']")

avantage = {
						'icon' => rooturl+picpart.at_css('img')['src'].to_s,
						'title' => expart.at_css('strong').text.strip,
						'description' => expart.at_css('span').text
}
avantages.push(avantage)
end

json = {}
json.update(item_data:item_data,tech_info:techinfo,avantages:avantages)
puts JSON.pretty_generate(json)
