class Book < ApplicationRecord
  belong_to :author, optional: true
  belong_to :category, optional true
end
