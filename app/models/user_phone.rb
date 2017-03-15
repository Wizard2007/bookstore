=begin
      t.string :phone
      t.boolean :is_active
=end
class UserPhone < ApplicationRecord
  belongs_to :user, optional: true
end
