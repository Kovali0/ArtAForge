class AddRoleIdAndNickToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nick, :string
    add_column :users, :role_id, :integer, null: false, default: 1 
  end
end
