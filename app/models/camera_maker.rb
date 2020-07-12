class CameraMaker < ApplicationRecord
  has_many :cameras, ->{ order(:id) }
  has_many :photos
end

