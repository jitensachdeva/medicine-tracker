require 'rails_helper'

RSpec.describe "medicines/new", type: :view do
  before(:each) do
    assign(:medicine, Medicine.new(
      :name => "MyString",
      :detailed_name => "MyString",
      :quantity_per_package => 1,
      :notes => "MyText"
    ))
  end

  it "renders new medicine form" do
    render

    assert_select "form[action=?][method=?]", medicines_path, "post" do

      assert_select "input[name=?]", "medicine[name]"

      assert_select "input[name=?]", "medicine[detailed_name]"

      assert_select "input[name=?]", "medicine[quantity_per_package]"

      assert_select "textarea[name=?]", "medicine[notes]"
    end
  end
end
