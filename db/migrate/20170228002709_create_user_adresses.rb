class CreateUserAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_adresses do |t|
      t.string :adress
      t.string :city
      t.string :zip
      t.boolean :is_active

      t.timestamps
    end
  end
end
