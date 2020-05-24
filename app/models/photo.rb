class Photo < ApplicationRecord

  belongs_to :user
  mount_uploader :image_id, PhotosUploader
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :accesses, dependent: :destroy
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
