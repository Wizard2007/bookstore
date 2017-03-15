=begin
      t.timestamp :date
=end
class Review < ApplicationRecord
  belong_to :user, optional: true
  # need add migration
  belong_to :book, optional: true
end
