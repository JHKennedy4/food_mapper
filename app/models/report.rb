class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :store_type

  has_many :food_availabilities
  accepts_nested_attributes_for :food_availabilities
end
