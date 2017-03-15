class AddOrderItemRefToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :order_item, foreign_key: true
  end
end
