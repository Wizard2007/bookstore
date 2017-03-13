class Category < ApplicationRecord
  has_many :books, optional: true
end
