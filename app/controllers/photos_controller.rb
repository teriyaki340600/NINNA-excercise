class PhotosController < ApplicationController

  def top
    @photos = Photo.all
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

  def edit
    @photo = Photo.find(params[:id])
  end

  def show
    @comment = Comment.new
    @photo = Photo.find(params[:id])
    require 'exifr/jpeg'
    @exif = EXIFR::JPEG::new(Rails.root.to_s + '/public' + @photo.image_id.to_s)
  end

  def destroy
    @photo = Photo.find(params[:id])
    if @photo.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :image_id, :caption)
  end

end
