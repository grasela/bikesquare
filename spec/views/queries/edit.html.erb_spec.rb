require 'rails_helper'

RSpec.describe "queries/edit", type: :view do
  before(:each) do
    @query = assign(:query, Query.create!(
      :question => "MyText",
      :answer => "MyText",
      :bicycle => nil
    ))
  end

  it "renders the edit query form" do
    render

    assert_select "form[action=?][method=?]", query_path(@query), "post" do

      assert_select "textarea[name=?]", "query[question]"

      assert_select "textarea[name=?]", "query[answer]"

      assert_select "input[name=?]", "query[bicycle_id]"
    end
  end
end
