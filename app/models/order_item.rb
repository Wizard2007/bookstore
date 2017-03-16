=begin
      t.decimal :price
	  t.decimal :quantity
=end
class OrderItem < ApplicationRecord
  has_one :book
end
