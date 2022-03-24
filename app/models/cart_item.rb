class CartItem < ApplicationRecord
  belongs_to:item
  belongs_to:customer

  validates :quantity, presence:true
  validates :item_id, presence:true
  validates :customer_id, presence:true


def subtotal
    item.with_tax_price*quantity
end

end
