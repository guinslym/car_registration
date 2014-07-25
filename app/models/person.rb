class Person < ActiveRecord::Base
  PROVINCE = ["Ontario", "Quebec", "Nova Scotia", "New Brunswick", 
              "Manitoba", "British Columbia", "Prince Edward Island", 
              "Saskatchewan", "Alberta", "Newfoundland and Labrador"]
  #first name is not mandatory in the conditions but I did it anyway            
  validates :first_name,:presence => true

  validates :postal_code, format: { with: /\A[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}\z/, message: "Only letters and numbers allowed V4M 3K1" }
  validates :postal_code, :presence => true

  validates :province, inclusion: { in: PROVINCE,    message: "%{value} is not a valid province" }
  validates :province, :presence => true

  validates :telephone_number, :presence => true
  #I used a gem instead of regex
  validates :telephone_number, :phone_number => {:ten_digits => true, :message => "invalid and can only be attributable to human error"}


   #validates_associated :user

  private

end


=begin
  
(1) first name
(2) last name
(3) street address
(4) city
(5) province  (from a drop down listing)
(6) postal code (verify the format is correct)
(7) telephone number (verify the value is a 10 digit telephone number)
  
=end