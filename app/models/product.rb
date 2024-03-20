class Product < ApplicationRecord
  validates :product_name, length: { maximum: 100 }
  validates :product_name, :product_img, :product_description, :product_price, :product_stock,
            presence: true
  
  belongs_to :user_id
end
