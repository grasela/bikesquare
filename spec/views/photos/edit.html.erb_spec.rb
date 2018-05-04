require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :image_data => "MyText",
      :bicycle => nil
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "textarea[name=?]", "photo[image_data]"

      assert_select "input[name=?]", "photo[bicycle_id]"
    end
  end
end
