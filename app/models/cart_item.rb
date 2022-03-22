class CartItem < ApplicationRecord
<<<<<<< HEAD
  belongs_to:items
  belongs_to:customer
=======
  belongs_to:item
  belongs_to:customer

  validates :quantity, presence:true
  validates :item_id, presence:true
  validates :customer_id, presence:true


def subtotal
    item.with_tax_price*quantity
end

>>>>>>> cb50555d88b0bbd8205ec4857af813bc271a95e6
end
