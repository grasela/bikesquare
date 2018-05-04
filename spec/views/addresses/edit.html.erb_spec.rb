require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :house_number => "MyString",
      :street_number => "MyString",
      :street => "MyString",
      :suburb => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country_code => "MyString",
      :postal_code => 1,
      :latitude => "9.99",
      :longitute => "9.99",
      :user => nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[house_number]"

      assert_select "input[name=?]", "address[street_number]"

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[suburb]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[country_code]"

      assert_select "input[name=?]", "address[postal_code]"

      assert_select "input[name=?]", "address[latitude]"

      assert_select "input[name=?]", "address[longitute]"

      assert_select "input[name=?]", "address[user_id]"
    end
  end
end
