class Magnifier < ApplicationRecord
  belongs_to :magnifier_maker
  has_many :reviews, dependent: :destroy
  mount_uploader :image_id, PhotosUploader
end
