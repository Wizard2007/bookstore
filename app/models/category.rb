=begin
      t.string :title
      t.text :description
      t.boolean :is_active
=end
class Category < ApplicationRecord
  has_many :books, optional: true
end
