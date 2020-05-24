class ReviewsController < ApplicationController

  def create
    camera = Camera.find(params[:camera_id])
    review = current_user.reviews.new(review_params)
    review.camera_id = camera.id
    review.save
    redirect_to camera_path(camera)
  end

  private
  def review_params
    params.require(:review).permit(:comment)
  end

end
