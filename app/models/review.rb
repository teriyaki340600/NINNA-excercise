class Review < ApplicationRecord
  belongs_to :user
  belongs_to :camera, optional: true
  belongs_to :magnifier, optional: true

  validates :comment, presence: true
end
