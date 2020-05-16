class PhotosController < ApplicationController

  def top
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      redirect_to photo_path(@photo.id)
    else
      render :new
    end
  end

  def index
  end

  def show
    @photo = Photo.find(params[:id])
    require 'exifr/jpeg'
    @exif = EXIFR::JPEG::new(Rails.root.to_s + '/public' + @photo.image_id.to_s)
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :image_id, :caption)
  end

end
