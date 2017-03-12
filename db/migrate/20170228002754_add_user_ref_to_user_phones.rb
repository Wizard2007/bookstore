class AddUserRefToUserPhones < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_phones, :user, foreign_key: true
  end
end
