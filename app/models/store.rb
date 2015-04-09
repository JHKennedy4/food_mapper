class Store < ActiveRecord::Base
  has_many :reports

  def self.search query
    where('name ILIKE ?', "%#{query}%")
  end
end
