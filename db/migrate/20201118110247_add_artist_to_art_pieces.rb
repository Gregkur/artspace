class AddArtistToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :artist, :string
  end
end
