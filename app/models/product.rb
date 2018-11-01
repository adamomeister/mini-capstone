class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :images
  has_many :carted_products

  def is_discounted
    price < 10
  end

  def tax
    tax_rate = 0.09
    tax_rate * price
  end

  def total
    price + tax
  end
end
