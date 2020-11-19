class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :art_piece, dependent: :delete_all
end
