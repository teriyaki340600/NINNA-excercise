class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    path = Rails.application.routes.recognize_path(request.referrer)
    if path[:controller] == "cameras"
      camera = Camera.find(params[:camera_id])
      review = current_user.reviews.new(review_params)
      review.camera_id = camera.id
      review.save!
      redirect_to camera_path(camera)
    else
      magnifier = Magnifier.find(params[:magnifier_id])
      review = current_user.reviews.new(review_params)
      review.magnifier_id = magnifier.id
      review.save!
      redirect_to magnifier_path(magnifier)
    end
  end

  def destroy
    path = Rails.application.routes.recognize_path(request.referrer)
    if path[:controller] == "cameras"
      camera = Camera.find(params[:camera_id])
      review = Review.find_by(id: params[:id], camera_id: params[:camera_id])
      if review.destroy
        redirect_to camera_path(camera)
      end
    else
      magnifier = Magnifier.find(params[:magnifier_id])
      review = Review.find_by(id: params[:id], magnifier_id: params[:magnifier_id])
      if review.destroy
        redirect_to magnifier_path(magnifier)
      end
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment)
  end

end