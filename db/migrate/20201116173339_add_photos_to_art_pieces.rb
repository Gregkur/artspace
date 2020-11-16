class AddPhotosToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :photo, :file
  end
end
