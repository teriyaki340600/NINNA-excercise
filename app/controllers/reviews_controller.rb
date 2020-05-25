class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    camera = Camera.find(params[:camera_id])
    review = current_user.reviews.new(review_params)
    review.camera_id = camera.id
    review.save!
    redirect_to camera_path(camera)
  end

  def destroy
    camera = Camera.find(params[:camera_id])
    review = Review.find_by(id: params[:id], camera_id: params[:camera_id])
    if review.destroy
      redirect_to camera_path(camera)
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment)
  end

end
