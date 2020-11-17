class AddArtistToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :author, :string
  end
end
