class AddRoleToUser < ActiveRecord::Migration[5.0]

  def change

    add_columm :users , :is_client , :boolean , default:true

  end

end
