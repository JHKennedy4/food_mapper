class Store < ActiveRecord::Base
  def self.search query
    where('name ILIKE ?', "%#{query}%")
  end
end
