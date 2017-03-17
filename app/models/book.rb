=begin
      t.string :title
      t.text :description
      t.decimal :price
      t.boolean :is_active
=end
class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
end
