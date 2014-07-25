class AddUserIdToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :user, index: true
    add_reference :vehicles, :user, index: true
  end
end
