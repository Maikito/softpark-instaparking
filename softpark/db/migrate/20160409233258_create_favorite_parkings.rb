class CreateFavoriteParkings < ActiveRecord::Migration
  def change
    create_table :favorite_parkings do |t|
      t.datetime :fec_favorite
      t.string :name_space
      t.references :user, index: true, foreign_key: true
      t.references :rent_parking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
