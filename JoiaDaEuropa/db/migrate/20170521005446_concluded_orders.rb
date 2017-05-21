class ConcludedOrders < ActiveRecord::Migration[5.0]

  def up

    _order = OrderState.find_or_initialize_by id: 2

    _order.update_attributes state: 'concluída', created_at: Time.now, updated_at: Time.now
    _order.save

  end

  def down

    OrderState.delete([2])

  end

end