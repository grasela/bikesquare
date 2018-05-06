require 'rails_helper'

RSpec.describe "queries/show", type: :view do
  before(:each) do
    @query = assign(:query, Query.create!(
      :question => "MyText",
      :answer => "MyText",
      :bicycle => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
