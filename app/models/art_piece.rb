class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 5, too_short: "minimum is %{count} characters" }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :photos, presence: true
  validates :artist, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_artist,
    against: [ :title, :description, :artist ],
    using: {
      tsearch: { prefix: true }
    }
end
