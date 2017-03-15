=begin
      t.string :number
      t.timestamps :date
=end
class Order < ApplicationRecord
  belongs_to :user, optional: true
  # need add migration
  # rails g migration AddOrderRefToOrderItems order:references
  has_many :order_items, optional: true
end
