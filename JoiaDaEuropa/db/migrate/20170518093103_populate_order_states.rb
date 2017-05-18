class PopulateOrderStates < ActiveRecord::Migration[5.0]

    def up

        OrderState.delete_all
        OrderState.create id: 1, state: 'order_state.pending', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 2, state: 'order_state.concluded', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 3, state: 'order_state.cancelled', created_at: Time.now, updated_at: Time.now

    end

    def down

        OrderState.delete(id: [1, 2, 3])

    end

end
