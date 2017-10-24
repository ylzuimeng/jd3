class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items, source: :product

  def add_product_to_cart
    ci = cart_itemns.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end
end
