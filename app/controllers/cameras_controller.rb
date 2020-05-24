class CamerasController < ApplicationController

  def show
    @camera = Camera.find(params[:id])
    @review = Review.new
  end

end
