class Vehicle < ActiveRecord::Base
  validates :year, numericality: { only_integer: true },  length: { is: 4 }
  validates :make,:presence => true
  validates :colour,:presence => true
  validates :colour, format: { with: /\A[a-zA-Z]\z/, message: "Only letters allowed" }



end

