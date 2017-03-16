=begin
	  t.string :title
	  t.string :description
      t.timestamp :date
=end
class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :book, optional: true
end
