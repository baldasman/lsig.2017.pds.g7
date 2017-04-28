class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :orderid,       null: false, default: ""
      t.text :obs,              null: true, default: ""
      t.datetime :deliverydate, null: false, default: ""
      t.decimal :price,         null: false, default: ""
      t.string :attachmentpath, null: true, default: ""


      add_reference :orders, :users

      belongs_to :users

      has_one :orderstats

      t.timestamps
    end
  end
end
