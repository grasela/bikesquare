json.extract! address, :id, :house_number, :street_number, :street, :suburb, :city, :state, :country_code, :postal_code, :latitude, :longitute, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
