class Product < ApplicationRecord
  has_many :images

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
