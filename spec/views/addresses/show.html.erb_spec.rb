require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :house_number => "House Number",
      :street_number => "Street Number",
      :street => "Street",
      :suburb => "Suburb",
      :city => "City",
      :state => "State",
      :country_code => "Country Code",
      :postal_code => 2,
      :latitude => "9.99",
      :longitute => "9.99",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/House Number/)
    expect(rendered).to match(/Street Number/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country Code/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
