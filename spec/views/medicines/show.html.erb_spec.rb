require 'rails_helper'

RSpec.describe "medicines/show", type: :view do
  before(:each) do
    @medicine = assign(:medicine, Medicine.create!(
      :name => "Name",
      :detailed_name => "Detailed Name",
      :quantity_per_package => 2,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Detailed Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
