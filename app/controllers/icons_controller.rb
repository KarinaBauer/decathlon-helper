class IconsController < ApplicationController
  def index
    @icons = Icon.all
    @icon = Icon.new
  end
 
  def show
    @icon = Icon.find(params[:id])
  end
 
  def edit
    @icon = Icon.find(params[:id])
  end
 

  def create
    @icon = Icon.new(icon_params)
    uploaded_io = params[:icon][:url]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    args = {:url => '/uploads/'+uploaded_io.original_filename}
    @icons = Icon.new(args)
    @icon.save

    if @icon.save
      redirect_to '/icons'
    else
      render 'index'
    end
  end
 
 
  def update
    @icon = Icon.find(params[:id])
 
    if @icon.update(icon_params)
      redirect_to @icon
    else
      render 'edit'
    end
  end
 
  def destroy
    @icon = Icon.find(params[:id])
    @icon.destroy
 
    redirect_to icons_path
  end
 
  private
    def icon_params
      params.require(:icon).permit(:url)
    end
end
