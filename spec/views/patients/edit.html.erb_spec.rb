require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :name => "MyString",
      :gender => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input[name=?]", "patient[name]"

      assert_select "input[name=?]", "patient[gender]"

      assert_select "textarea[name=?]", "patient[notes]"
    end
  end
end
