class ChangePhone < ActiveRecord::Migration
  def change
  change_column :clubs, :phone, :string
  end
end
