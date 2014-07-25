require 'rails_helper'


RSpec.describe Person, :type => :model do

    context ".province" do
      it "should be within a range of value" do
        expect((Person.create(:province => "Ontario", :first_name => "Antoine", :postal_code => "V4M 4L9", :telephone_number => "514-908-9999")).valid?).to be_truthy #be_truthy
      end
      it "have error when it's outside a range" do
        expect(Person.create(:province => "Foo Var", :first_name => "Antoine", :postal_code => "V4M 4L9", :telephone_number => "514-908-9999")).to have(1).error_on(:province)
      end
    end
    it ".postal_code expected to be in a valid format" do
      expect((Person.create(:telephone_number => "514-908-9999", :province => "Quebec", :first_name => "Antoine", :postal_code => "V4M 4L9")).valid?).to be_truthy
      expect((Person.create(:telephone_number => "1-514-908-9999", :province => "Quebec", :first_name => "Antoine", :postal_code => "V4MT4L9")).valid?).to be_falsey
    end
    it ".telephone_number should be a 10 digit numbers" do
      expect((Person.create(:province => "Quebec", :first_name => "Antoine", :postal_code => "V4M 4L9", :telephone_number => "514-908-9999")).valid?).to be_truthy
      expect((Person.create(:province => "Quebec", :first_name => "Antoine", :postal_code => "V4M 4L9", :telephone_number => "5-514-908-9999")).valid?).to be_falsey
    end
    it ".first_name is expected to be present" do
      expect((Person.create(:province => "Quebec", :postal_code => "V4M 4L9", :telephone_number => "5-514-908-9999")).valid?).to be_falsey
    end
    it "should have only one user" do

    end

end
     #expect(subject).to have(1).error_on(:first_name)
     #expect(subject.valid?).to be_falsey
=begin
  
(1) first name
(2) last name
(3) street address
(4) city
(5) province  (from a drop down listing)
(6) postal code (verify the format is correct)
(7) telephone number (verify the value is a 10 digit telephone number)
  
=end
