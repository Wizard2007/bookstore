=begin
      t.string :number
      t.string :name
      t.string :mm
      t.string :yy
      t.string :cvv
=end
class Card < ApplicationRecord
  has_one :user, optional: true
end
