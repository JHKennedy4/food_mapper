class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.references :food_category, index: true, foreign_key: true
      t.string :type
      t.string :desired_unit

      t.timestamps null: false
    end
  end
end
