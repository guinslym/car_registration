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

class Vehicle < ActiveRecord::Base
  validates :year, numericality: { only_integer: true },  length: { is: 4 }
  validates :make,:presence => true
  validates :colour,:presence => true
  validates :colour, format: { with: /\A[-a-zA-Z]+\z/, message: "Only letters allowed" }
  validates :license_plate,:presence => true
  before_save :remove_blank_space

  belongs_to :user

  def remove_blank_space
    self.license_plate = license_plate.gsub(/[^0-9a-z ]/i, '')
  end


end

