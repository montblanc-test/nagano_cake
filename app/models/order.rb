class Order < ApplicationRecord
  has_many:order_items, dependent: :destroy
  belongs_to:customer

  has_one_attached :image

  validates :payment_method, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :post_code, presence: true


  enum payment_method: { credit_card: 0, transfer: 1 }
  enum order_status: { waiting_deposit: 0, confirm_deposit: 1, in_production: 2, ready_ship: 3, complete_ship: 4 }



  def sum_price
  item.taxin_price*quantity
  end

  def full_name
    self.last_name + " " + self.first_name
  end


end
