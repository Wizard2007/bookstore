=begin
      t.string :title
      t.text :description
      t.decimal :price
      t.boolean :is_active
=end
class Book < ApplicationRecord
  belong_to :author, optional: true
  belong_to :category, optional true
end
