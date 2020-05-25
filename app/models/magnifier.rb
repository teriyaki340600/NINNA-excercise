class Magnifier < ApplicationRecord
  has_many :reviews, dependent: :destroy
  mount_uploader :image_id, PhotosUploader
end
