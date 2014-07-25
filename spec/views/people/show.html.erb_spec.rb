require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :street_address => "Street Address",
      :city => "City",
      :province => "Province",
      :postal_code => "Postal Code",
      :telephone_number => "Telephone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Telephone Number/)
  end
end
