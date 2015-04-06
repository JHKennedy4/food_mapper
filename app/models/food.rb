class Food < ActiveRecord::Base
  has_one :food_category
  has_one :unit
end
