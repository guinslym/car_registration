require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :street_address => "Street Address",
        :city => "City",
        :province => "Province",
        :postal_code => "Postal Code",
        :telephone_number => "Telephone Number"
      ),
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :street_address => "Street Address",
        :city => "City",
        :province => "Province",
        :postal_code => "Postal Code",
        :telephone_number => "Telephone Number"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Province".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone Number".to_s, :count => 2
  end
end
