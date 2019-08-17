class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :university
      t.string :dni
      t.string :city
      t.string :province
      t.string :country
      t.string :category
      t.string :course
      t.boolean :scholarship

      t.timestamps
    end
  end
end