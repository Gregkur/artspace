class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  # validates :photo, presence: true
end
