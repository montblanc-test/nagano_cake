class Item < ApplicationRecord
  has_many:cart_items, dependent: :destroy
  has_many:order_items, dependent: :destroy
  belongs_to:genre

  has_one_attached :item_image

  validates :genre_id, presence:true
  validates :name, presence:true
  validates :introduction, presence:true
  validates :price, presence:true
  #validates :is_status, presence:true

  def get_item_image(width, height)
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpeg')
      item_image.attach(io: File.open(file_path), filename: 'default-image.jpg',content_type:'image/jpeg')
    end
      item_image.variant(resize_to_fit:[width, height]).processed
  end

  def with_tax_price
    (price*1.1).floor
  end

  def with_price
    (price).floor
  end

  #enum is_status: {closed: false, sale: true}

end

