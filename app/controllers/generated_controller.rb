class GeneratedController < ApplicationController
  protect_from_forgery except: :index
  def preview

    @item_data = params[:item]

    @avantages = []
    params[:avantages].each do |avantage|
      avant = {
        icon: params[:icon],
        title: params[:title],
        description: params[:description]
      }
      @avantages.push(avant)
      end
  end
end
