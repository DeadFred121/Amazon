class Store < ApplicationRecord
  geocoded_by :monkey_address
  after_validation :geocode

  def monkey_address
    "#{address}, #{city}, #{state}, #{postcode}, #{country}"
  end

end
