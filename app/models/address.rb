class Address < ApplicationRecord
  belongs_to:customer, optional: true

  validates :post_code, presence: true
  validates :address, presence: true
  validates :name, presence: true

end
