class Order < ApplicationRecord

  belongs_to :user
  belongs_to :order_state

end
