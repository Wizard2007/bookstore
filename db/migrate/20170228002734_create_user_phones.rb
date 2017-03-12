class CreateUserPhones < ActiveRecord::Migration[5.0]
  def change
    create_table :user_phones do |t|
      t.string :phone
      t.boolean :is_active

      t.timestamps
    end
  end
end
