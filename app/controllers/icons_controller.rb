class IconsController < ApplicationController
  protect_from_forgery except: :index

  def index
    @icons = Icon.all
    @icon = Icon.new
    render 'manager'
  end

  def create
    @icon = Icon.new(icon_params)
    uploaded_io = params[ :icon ][ :url ]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    args = { :url => '/uploads/'+uploaded_io.original_filename }
    @icon = Icon.new(args)
    @icon.save

    if @icon.save
      redirect_to icons_path
    else
      render 'index'
    end
  end
 
  def show
    @icon = Icon.find( params[ :id ] )
  end

  def destroy
    @icon = Icon.find( params[ :id ] )
    @icon.destroy
 
    redirect_to icons_path
  end
 
  private
    def icon_params
      params.require( :icon ).permit( :url, :id )
    end
end
