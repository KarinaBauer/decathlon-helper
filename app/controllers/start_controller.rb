class StartController < ApplicationController
	def index
		$url = ''
		@item_min = ItemMin.new
	end

	def about
		render 'about'
	end
end
