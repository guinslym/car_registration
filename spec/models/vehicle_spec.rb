# == Schema Information
#
# Table name: vehicles
#
#  id            :integer          not null, primary key
#  license_plate :string(255)
#  colour        :string(255)
#  make          :string(255)
#  model         :string(255)
#  year          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  user_id       :integer
#

require 'rails_helper'

RSpec.describe Vehicle, :type => :model do
  it ".coulour is expected to be alpha only" do
    expect(Vehicle.create(:colour => "3458")).to have(1).error_on(:colour)
  end
  it ".make should be present" do
    expect(Vehicle.create(:year => "3458")).to have(1).error_on(:make)
  end
  context ".year" do
    it "should have a valid length" do
      expect(Vehicle.create(:year => "3455", :make => "toyota")).to be_truthy
      expect(Vehicle.create(:year => "33333")).to have(1).error_on(:year)
    end
    it "should be an integer" do
      expect(Vehicle.create(:year => "aaaa")).to have(1).error_on(:year)
      expect(Vehicle.create(:year => "aaaaaaaaa")).to have(2).error_on(:year)
    end
    it "should have only one user" do

    end
  end
end
