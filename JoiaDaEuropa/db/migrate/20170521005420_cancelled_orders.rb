class CancelledOrders < ActiveRecord::Migration[5.0]

  def up

    _order = OrderState.find_or_initialize_by id: 3

    _order.update_attributes state: 'cancelled', created_at: Time.now, updated_at: Time.now
    _order.save

  end

  def down

    OrderState.delete([3])

  end

end
