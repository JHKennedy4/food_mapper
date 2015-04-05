class RenameTypeToFoodType < ActiveRecord::Migration
  def change
    rename_column :foods, :type, :food
  end
end
