=begin
      t.string :first_name
      t.string :email
      t.string :password
      t.string :confirmation
      t.boolean :is_admin
=end

class User < ApplicationRecord
  has_many :orders
  has_many :cards
  has_many :phones
  has_many :user_adresses
  has_many :reviews
  validates :first_name, :password, :confirmation, presence: true
  validates :email, presence: true     
end
