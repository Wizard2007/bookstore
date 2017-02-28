class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :number
      t.string :name
      t.string :mm
      t.string :yy
      t.string :cvv

      t.timestamps
    end
  end
end
