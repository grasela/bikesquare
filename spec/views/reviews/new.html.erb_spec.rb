require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :content => "MyText",
      :reviewer => nil,
      :rating => 1,
      :reviewed_user => nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "textarea[name=?]", "review[content]"

      assert_select "input[name=?]", "review[reviewer_id]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[reviewed_user_id]"
    end
  end
end
