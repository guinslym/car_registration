class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :telephone_number

      t.timestamps
    end
  end
end
