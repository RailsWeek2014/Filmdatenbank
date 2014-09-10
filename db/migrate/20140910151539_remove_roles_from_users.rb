class RemoveRolesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :role, :string
    remove_column :users, :role_id, :integer
    drop_table :roles   
  end
end
