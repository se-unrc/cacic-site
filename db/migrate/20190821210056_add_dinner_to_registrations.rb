class AddDinnerToRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :registrations, :dinner, :boolean, :null => false, :default => false
    add_column :registrations, :code, :string
  end
end
