require 'rails_helper'

RSpec.describe "vehicles/index", :type => :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :license_plate => "License Plate",
        :colour => "Colour",
        :make => "Make",
        :model => "Model",
        :year => "Year"
      ),
      Vehicle.create!(
        :license_plate => "License Plate",
        :colour => "Colour",
        :make => "Make",
        :model => "Model",
        :year => "Year"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "License Plate".to_s, :count => 2
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
