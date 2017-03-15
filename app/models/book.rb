=begin
      t.string :title
      t.text :description
      t.decimal :price
      t.boolean :is_active
=end
class Book < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :category, optional true
end
