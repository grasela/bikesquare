require 'rails_helper'

RSpec.describe "bicycles/show", type: :view do
  before(:each) do
    @bicycle = assign(:bicycle, Bicycle.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Colour/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Serial No/)
    expect(rendered).to match(//)
  end
end
