class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :delete_all

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 5, too_short: "minimum is %{count} characters" }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :photos, presence: true
  validates :artist, presence: true

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :title, :description, :artist ],
    using: {
      tsearch: { prefix: true }
    }
end
