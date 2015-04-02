class FoodAvailability < ActiveRecord::Base
  belongs_to :report
  belongs_to :user
  belongs_to :food_type
  belongs_to :actual_unit
end
