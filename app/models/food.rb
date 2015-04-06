class Food < ActiveRecord::Base
  belongs_to :food_category
  belongs_to :unit, :foreign_key => "desired_unit_id"
end
