class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :province, null: false
      t.string :postal_code, null: false
      t.string :telephone_number, null: false

      t.timestamps
    end
  end
end
