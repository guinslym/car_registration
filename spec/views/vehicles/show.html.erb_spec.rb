require 'rails_helper'

RSpec.describe "vehicles/show", :type => :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :license_plate => "License Plate",
      :colour => "Colour",
      :make => "Make",
      :model => "Model",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/License Plate/)
    expect(rendered).to match(/Colour/)
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Year/)
  end
end
