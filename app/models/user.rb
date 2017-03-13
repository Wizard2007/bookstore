class User < ApplicationRecord
  has_many :orders, optional: true
  has_many :cards, optional: true
end
