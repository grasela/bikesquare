require 'rails_helper'

RSpec.describe "bicycles/new", type: :view do
  before(:each) do
    assign(:bicycle, Bicycle.new(
      :title => "MyString",
      :price => "9.99",
      :description => "MyText",
      :brand => "MyString",
      :type => "",
      :size => "MyString",
      :colour => "MyString",
      :gender => "MyString",
      :year => "MyString",
      :serial_no => "MyString",
      :user => nil
    ))
  end

  it "renders new bicycle form" do
    render

    assert_select "form[action=?][method=?]", bicycles_path, "post" do

      assert_select "input[name=?]", "bicycle[title]"

      assert_select "input[name=?]", "bicycle[price]"

      assert_select "textarea[name=?]", "bicycle[description]"

      assert_select "input[name=?]", "bicycle[brand]"

      assert_select "input[name=?]", "bicycle[type]"

      assert_select "input[name=?]", "bicycle[size]"

      assert_select "input[name=?]", "bicycle[colour]"

      assert_select "input[name=?]", "bicycle[gender]"

      assert_select "input[name=?]", "bicycle[year]"

      assert_select "input[name=?]", "bicycle[serial_no]"

      assert_select "input[name=?]", "bicycle[user_id]"
    end
  end
end
