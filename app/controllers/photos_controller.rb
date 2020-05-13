class PhotosController < ApplicationController

  def top
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    @photo.save
    redirect_to new_photo_path
  end

  def index
  end

  def show
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :image_id, :caption)
  end

end
