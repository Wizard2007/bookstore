=begin
      t.string :adress
      t.string :city
      t.string :zip
      t.boolean :is_active
=end
class UserAdress < ApplicationRecord
  belong_to :user
end
