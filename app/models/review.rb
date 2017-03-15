=begin
	  t.string :title
	  t.string :description
      t.timestamp :date
=end
class Review < ApplicationRecord
  belongs_to :user, optional: true
  # need add migration
  # rails g migration AddReviewItemRefToBooks review:references
  belongs_to :book, optional: true
end
