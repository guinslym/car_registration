class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :license_plate
      t.string :colour, null: false
      t.string :make, null: false
      t.string :model
      t.string :year, null: false

      t.timestamps
    end
  end
end
