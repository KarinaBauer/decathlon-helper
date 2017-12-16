class PicturesController < ApplicationController
  protect_from_forgery except: :index

  def index
    @pictures = Picture.all
    @picture = Picture.new
    render 'manager'
  end

  def create
    @picture = Picture.new(picture_params)
    uploaded_io = params[ :picture ][ :url ]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    args = { :url => '/uploads/'+uploaded_io.original_filename }
    @picture = Picture.new(args)
    @picture.save

    if @picture.save
      redirect_to pictures_path
    else
      render 'index'
    end
  end
 
  def show
    @picture = Picture.find( params[ :id ] )
  end

  def destroy
    @picture = Picture.find( params[ :id ] )
    @picture.destroy
 
    redirect_to pictures_path
  end

  def select
    @pictures = Picture.all
    render 'select'
  end

  private
    def picture_params
      params.require( :picture ).permit( :url, :id )
    end
end
