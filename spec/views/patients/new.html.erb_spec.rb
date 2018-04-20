require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      :name => "MyString",
      :gender => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input[name=?]", "patient[name]"

      assert_select "input[name=?]", "patient[gender]"

      assert_select "textarea[name=?]", "patient[notes]"
    end
  end
end
