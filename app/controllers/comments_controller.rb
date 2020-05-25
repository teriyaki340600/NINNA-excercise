class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    photo = Photo.find(params[:photo_id])
    comment = current_user.comments.new(comment_params)
    comment.photo_id = photo.id
    comment.save
    redirect_to photo_path(photo)
  end

  def destroy
    photo = Photo.find(params[:photo_id])
    comment = Comment.find_by(id: params[:id], photo_id: params[:photo_id])
    if comment.destroy
      redirect_to photo_path(photo)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end