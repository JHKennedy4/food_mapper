class RenameFoodTypesToFoods < ActiveRecord::Migration
  def self.up
    rename_table :food_types, :foods
  end

  def self.down
    rename_table :foods, :food_types
  end
end
