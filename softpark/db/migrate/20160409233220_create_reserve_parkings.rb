class CreateReserveParkings < ActiveRecord::Migration
  def change
    create_table :reserve_parkings do |t|
      t.datetime :fec_reserve
      t.date :fec_ini_reserve
      t.date :fec_fin_reserv
      t.integer :hor_ini_reserve
      t.integer :hor_fin_reserve
      t.float :mont_reserve
      t.string :cod_Pay
      t.string :state
      
      t.references :user, index: true, foreign_key: true
      t.references :rent_parking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
