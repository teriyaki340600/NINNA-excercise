class CamerasController < ApplicationController

  def show
    @camera = Camera.find(params[:id])
    @review = Review.new
  end

  def index
    camera_maker = CameraMaker.find(params[:camera_maker_id])
    render json: camera_maker.cameras.select(:id, :name)
  end

end
