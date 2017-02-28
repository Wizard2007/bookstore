class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :second_name
      t.text :description
      t.boolean :is_active

      t.timestamps
    end
  end
end
