class Camera < ApplicationRecord
  has_many :reviews, dependent: :destroy
  mount_uploader :image_id, PhotosUploader
end
