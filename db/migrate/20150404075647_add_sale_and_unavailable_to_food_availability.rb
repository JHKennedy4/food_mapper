class AddSaleAndUnavailableToFoodAvailability < ActiveRecord::Migration
  def change
    add_column :food_availabilities, :sale, :boolean
    add_column :food_availabilities, :unavailable, :boolean
  end
end
