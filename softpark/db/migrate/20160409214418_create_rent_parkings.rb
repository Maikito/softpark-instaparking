class CreateRentParkings < ActiveRecord::Migration
  def change
    create_table :rent_parkings do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :addres
      t.string :phone
      t.references :user, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true
      t.references :type_parking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
