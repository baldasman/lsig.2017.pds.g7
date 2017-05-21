class PopulateOrderStates < ActiveRecord::Migration[5.0]

    def up

        OrderState.delete_all
        OrderState.create id: 1, state: 'pendente', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 2, state: 'concluída', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 3, state: 'cancelada', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 4, state: 'aprovada', created_at: Time.now, updated_at: Time.now

    end

    def down

        OrderState.delete(id: [1, 2, 3])

    end

end
