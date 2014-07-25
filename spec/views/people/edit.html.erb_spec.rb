require 'rails_helper'

RSpec.describe "people/edit", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :province => "MyString",
      :postal_code => "MyString",
      :telephone_number => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_street_address[name=?]", "person[street_address]"

      assert_select "input#person_city[name=?]", "person[city]"

      assert_select "input#person_province[name=?]", "person[province]"

      assert_select "input#person_postal_code[name=?]", "person[postal_code]"

      assert_select "input#person_telephone_number[name=?]", "person[telephone_number]"
    end
  end
end
