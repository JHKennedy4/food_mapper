class RenameFoodTypesToFoods < ActiveRecord::Migration
  def change
    rename_table :food_types, :foods
  end
end
