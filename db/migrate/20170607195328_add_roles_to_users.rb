class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :organization, :boolean, default: false
    add_column :users, :voluntter, :boolean, default: false
  end
end
