class AddMoodToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :mood, :string
  end
end
