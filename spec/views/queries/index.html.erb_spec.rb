require 'rails_helper'

RSpec.describe "queries/index", type: :view do
  before(:each) do
    assign(:queries, [
      Query.create!(
        :question => "MyText",
        :answer => "MyText",
        :bicycle => nil
      ),
      Query.create!(
        :question => "MyText",
        :answer => "MyText",
        :bicycle => nil
      )
    ])
  end

  it "renders a list of queries" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
