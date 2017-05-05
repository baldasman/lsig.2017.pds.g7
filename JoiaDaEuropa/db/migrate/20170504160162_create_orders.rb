class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      belongs_to :users
      has_one :orderstates

      t.string :obs
      t.datetime :delivery_date
      t.decimal :price
      t.string :attachment_path

      t.timestamps
    end
  end
end
