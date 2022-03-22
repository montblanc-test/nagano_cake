class Order < ApplicationRecord
  has_many:order_items, dependent: :destroy
  belongs_to:customer

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum order_status: { waiting_deposit: 0, confirm_deposit: 1, in_production: 2, ready_ship: 3, complete_ship: 4 }

end
