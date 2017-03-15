=begin
      t.decimal :price
=end
class OrderItem < ApplicationRecord
  # need add migration
  has_one :book, optional: true
end
