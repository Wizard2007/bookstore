=begin
	  t.string :title
	  t.string :description
      t.timestamp :date
=end
class Review < ApplicationRecord
  belong_to :user, optional: true
  # need add migration
  # rails g migration AddReviewItemRefToBooks review:references
  belong_to :book, optional: true
end
