class Address < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  def address
  [house_number, street_number, street, suburb, city, state, postal_code, country_code].compact.join(' ')
  end
end
