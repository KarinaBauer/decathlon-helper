class ComparsionController < ApplicationController
	protect_from_forgery except: :index

	def index
		render 'compare'
	end

	def view
		render 'table'
	end

end