require 'rails_helper'

RSpec.describe "medicines/edit", type: :view do
  before(:each) do
    @medicine = assign(:medicine, Medicine.create!(
      :name => "MyString",
      :detailed_name => "MyString",
      :quantity_per_package => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit medicine form" do
    render

    assert_select "form[action=?][method=?]", medicine_path(@medicine), "post" do

      assert_select "input[name=?]", "medicine[name]"

      assert_select "input[name=?]", "medicine[detailed_name]"

      assert_select "input[name=?]", "medicine[quantity_per_package]"

      assert_select "textarea[name=?]", "medicine[notes]"
    end
  end
end
