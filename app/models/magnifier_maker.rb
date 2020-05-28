class MagnifierMaker < ApplicationRecord
  has_many :magnifiers, ->{ order(:id) }
  has_many :photos
end
