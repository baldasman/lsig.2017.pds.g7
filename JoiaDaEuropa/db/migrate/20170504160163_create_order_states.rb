class CreateOrderStates < ActiveRecord::Migration[5.0]
  def change
    create_table :order_states do |t|

      belongs_to :orders

      t.string :state

      t.timestamps
    end
  end
end
