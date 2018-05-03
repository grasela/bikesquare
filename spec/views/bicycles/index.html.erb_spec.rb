require 'rails_helper'

RSpec.describe "bicycles/index", type: :view do
  before(:each) do
    assign(:bicycles, [
      Bicycle.create!(
        :title => "Title",
        :price => "9.99",
        :description => "MyText",
        :brand => "Brand",
        :type => "Type",
        :size => "Size",
        :colour => "Colour",
        :gender => "Gender",
        :year => "Year",
        :serial_no => "Serial No",
        :user => nil
      ),
      Bicycle.create!(
        :title => "Title",
        :price => "9.99",
        :description => "MyText",
        :brand => "Brand",
        :type => "Type",
        :size => "Size",
        :colour => "Colour",
        :gender => "Gender",
        :year => "Year",
        :serial_no => "Serial No",
        :user => nil
      )
    ])
  end

  it "renders a list of bicycles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Serial No".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
