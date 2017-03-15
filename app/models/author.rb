=begin
      t.string :first_name
      t.string :second_name
      t.text :description
      t.boolean :is_active
=end
class Author < ApplicationRecord
  has_many :books, optional: true
end
