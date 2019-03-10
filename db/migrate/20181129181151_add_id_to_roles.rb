class AddIdToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :id, :primary_key
  end
end
