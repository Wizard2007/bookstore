class User < ApplicationRecord
  has_many :orders, optional: true
  has_many :cards, optional: true
  has_many :phones, optional: true
  has_many :user_adresses, optional: true
  has_many :reviews, optional: true
end
