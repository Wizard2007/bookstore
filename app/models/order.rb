=begin
      t.string :number
=end
class Order < ApplicationRecord
  belong_to :user, optional: true
  # need add migration
  has_many :order_items, optional: true
end
