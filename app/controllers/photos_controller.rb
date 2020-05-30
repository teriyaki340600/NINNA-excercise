class PhotosController < ApplicationController
  before_action :authenticate_user!, except: %i[index show top]

  def top
    @photos = Photo.all.limit(12)
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
    @photo_ranks_pop = Photo.joins(:accesses).merge(Access.order(number: :desc)).page(params[:page]).per(20)
    @photo_ranks_latest = Photo.order(created_at: "DESC").page(params[:page]).per(20)
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def show
    Access.transaction do
      abc = Access.find_or_create_by!(photo_id: params[:id])
      abc.increment!(:number)
    end
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
    params.require(:photo).permit(
      :title, :image_id, :caption, :camera_id, :magnifier_id, :camera_maker_id
      )
  end
end
