class CreateArtPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :availability, :default => true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
