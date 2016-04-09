class CreateTypeParkings < ActiveRecord::Migration
  def change
    create_table :type_parkings do |t|
      t.string :description
      t.string :state

      t.timestamps null: false
    end
  end
end
