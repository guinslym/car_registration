require 'rails_helper'

RSpec.describe "vehicles/edit", :type => :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :license_plate => "MyString",
      :colour => "MyString",
      :make => "MyString",
      :model => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input#vehicle_license_plate[name=?]", "vehicle[license_plate]"

      assert_select "input#vehicle_colour[name=?]", "vehicle[colour]"

      assert_select "input#vehicle_make[name=?]", "vehicle[make]"

      assert_select "input#vehicle_model[name=?]", "vehicle[model]"

      assert_select "input#vehicle_year[name=?]", "vehicle[year]"
    end
  end
end
