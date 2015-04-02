class CreateFoodAvailabilities < ActiveRecord::Migration
  def change
    create_table :food_availabilities do |t|
      t.references :report, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :food_type, index: true, foreign_key: true
      t.string :brand
      t.decimal :price, precision: 8, scale: 2
      t.references :actual_unit, index: true, foreign_key: true
      t.decimal :quantity

      t.timestamps null: false
    end
  end
end
