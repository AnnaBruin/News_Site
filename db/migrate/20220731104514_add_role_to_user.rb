class AddRoleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :editor, :boolean, default: false
    add_column :users, :correspondent, :boolean, default: false
  end
end
