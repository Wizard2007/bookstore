=begin
      t.decimal :price
	  t.decimal :quantity
=end
class OrderItem < ApplicationRecord
  # need add migration
  # rails g migration AddOrderItemRefToBooks order_item:references
  has_one :book, optional: true
end
