class AddReferences < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :user, index: true
    add_reference :orders, :order_state, index: true
    add_reference :users, :user_profile, index: true
  end
end
