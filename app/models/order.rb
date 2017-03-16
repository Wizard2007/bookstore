=begin
      t.string :number
      t.timestamps :date
=end
class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :order_items
end
