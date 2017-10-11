class Store < ApplicationRecord
  def monkey_address
    "#{address}, #{city}, #{state}, #{postcode}, #{country}"
  end
end
