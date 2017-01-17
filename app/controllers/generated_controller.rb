class GeneratedController < ApplicationController
  protect_from_forgery except: :index
  def preview
    @avantages = []
    params[:avantages].each do |avantage|

      unless avantage[:icon_new].nil?
        uploaded_io = avantage[:icon_new]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
          @icon = '/uploads/'+uploaded_io.original_filename
        end
      else
        @icon = avantage[:icon]
      end

      avant = {
        icon: @icon,
        title: avantage[:title],
        description: avantage[:description]
      }

    @avantages.push(avant)
    end
  end
end
