class Camera < ApplicationRecord
  belongs_to :camera_maker
  has_many :reviews, dependent: :destroy
  mount_uploader :image_id, PhotosUploader
end
