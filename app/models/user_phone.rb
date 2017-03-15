=begin
      t.string :phone
      t.boolean :is_active
=end
class UserPhone < ApplicationRecord
  belong_to :user, optional: true
end
