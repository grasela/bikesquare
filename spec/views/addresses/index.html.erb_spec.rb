require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
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
      ),
      Address.create!(
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
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "House Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
