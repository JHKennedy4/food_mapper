class RenameFoodTypeIdToFoodIdInFoodAvailabilities < ActiveRecord::Migration
  def change
    rename_column :food_availabilities, :food_type_id, :food_id
  end
end
