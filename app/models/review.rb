class Review < ApplicationRecord
  belong_to :user, optional: true
end
