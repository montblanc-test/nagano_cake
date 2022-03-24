class Order < ApplicationRecord
  has_many:order_items, dependent: :destroy
  belongs_to:customer

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum order_status: { waiting_deposit: 0, confirm_deposit: 1, in_production: 2, ready_ship: 3, complete_ship: 4 }


  validates :name, presence:true
  validates :address, presence:true
  validates :post_code, presence:true
  validates :payment_method, presence:true
  validates :total_payment, presence:true
  validates :shipping_cost, presence:true
  validates :order_status, presence:true
  validates :customer_id, presence:true


  def sum_price
  item.taxin_price*quantity
  end

  def full_name
    self.last_name + " " + self.first_name
  end

  def with_tax_price
    (price*1.1).floor
  end

end