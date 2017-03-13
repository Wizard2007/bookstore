class Author < ApplicationRecord
  has_many :books, optional: true
end
