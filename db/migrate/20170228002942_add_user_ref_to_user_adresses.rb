class AddUserRefToUserAdresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_adresses, :user, foreign_key: true
  end
end
