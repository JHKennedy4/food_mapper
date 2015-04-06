class FoodAvailability < ActiveRecord::Base
  belongs_to :report
  belongs_to :food_type
  belongs_to :unit, :foreign_key => "actual_unit_id"
end
