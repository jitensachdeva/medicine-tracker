require 'rails_helper'

RSpec.describe "medicines/index", type: :view do
  before(:each) do
    assign(:medicines, [
      Medicine.create!(
        :name => "Name",
        :detailed_name => "Detailed Name",
        :quantity_per_package => 2,
        :notes => "MyText"
      ),
      Medicine.create!(
        :name => "Name",
        :detailed_name => "Detailed Name",
        :quantity_per_package => 2,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of medicines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Detailed Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
