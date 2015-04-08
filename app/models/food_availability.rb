class FoodAvailability < ActiveRecord::Base
  belongs_to :report
  belongs_to :food
  belongs_to :unit, :foreign_key => "actual_unit_id"

  validates :price, presence: true, unless: ->(availability){availability.unavailable.present?}
  validates :unavailable, presence: true, unless: ->(availability){availability.price.present? || availability.sale.present?}

end
