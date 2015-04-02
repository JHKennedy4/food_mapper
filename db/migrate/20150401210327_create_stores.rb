class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.string :address1
      t.string :address2
      t.integer :zip_code
      t.integer :zip_extended
      t.string :city
      t.string :county
      t.string :state

      t.timestamps null: false
    end
  end
end
