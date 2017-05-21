class AddRoleToUser < ActiveRecord::Migration[5.0]

  def change

    add_column :users, :is_client, :boolean, default: true
    add_column :users, :admin, :boolean, default: false
  end

end