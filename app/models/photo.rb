class Photo < ApplicationRecord

  belongs_to :user
  belongs_to :camera, optional: true
  belongs_to :camera_maker, optional: true

  mount_uploader :image_id, PhotosUploader

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :accesses, dependent: :destroy

  validates :title, :image_id, presence: true
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end