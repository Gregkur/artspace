class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 75, too_short: "minimum is %{count} characters" }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :photos, presence: true
  validates :artist, presence: true, length: { minimum: 5 }
end
