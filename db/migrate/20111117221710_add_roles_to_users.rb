class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :agent, :boolean, :default => true
    add_column :users, :admin, :boolean, :default => false
  end
end
