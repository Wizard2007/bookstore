class Card < ApplicationRecord
  has_one :user, optional: true
end
