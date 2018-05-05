require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :content => "MyText",
      :reviewer => nil,
      :rating => 1,
      :reviewed_user => nil
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "textarea[name=?]", "review[content]"

      assert_select "input[name=?]", "review[reviewer_id]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[reviewed_user_id]"
    end
  end
end
