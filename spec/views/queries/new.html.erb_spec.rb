require 'rails_helper'

RSpec.describe "queries/new", type: :view do
  before(:each) do
    assign(:query, Query.new(
      :question => "MyText",
      :answer => "MyText",
      :bicycle => nil
    ))
  end

  it "renders new query form" do
    render

    assert_select "form[action=?][method=?]", queries_path, "post" do

      assert_select "textarea[name=?]", "query[question]"

      assert_select "textarea[name=?]", "query[answer]"

      assert_select "input[name=?]", "query[bicycle_id]"
    end
  end
end
