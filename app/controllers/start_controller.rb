class StartController < ApplicationController
  def index
  	$url = ''
  end

  def about
  	render 'about'
  end
end
