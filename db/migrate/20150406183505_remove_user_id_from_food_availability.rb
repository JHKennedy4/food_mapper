class RemoveUserIdFromFoodAvailability < ActiveRecord::Migration
  def change
    remove_column :food_availabilities, :user_id, :integer
  end
end
