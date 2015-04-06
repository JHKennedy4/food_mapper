class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :store_type
end
