class CreateRoleTable < ActiveRecord::Migration[5.2]
  def change
    create_table :roles, :id => false do |t|
      t.integer :id
      t.string :role_name
      t.timestamps
    end
  end
end
