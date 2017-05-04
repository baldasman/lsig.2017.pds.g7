class CreateOrderstats < ActiveRecord::Migration[5.0]
  def change
    create_table :orderstatuses do |t|
      t.string :status,      null: false, default: ""

      add_reference :orders, orderstatus

      belongs_to :orders

      t.timestamps
    end
  end
end
