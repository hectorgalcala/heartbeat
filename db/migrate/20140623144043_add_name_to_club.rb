class AddNameToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :name, :string
    add_column :clubs, :address, :string
    add_column :clubs, :hours, :string
    add_column :clubs, :phone, :integer
    add_column :clubs, :people, :integer
    add_column :clubs, :capacity, :integer
  end
end
