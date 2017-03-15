class AddReviewItemRefToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :review, foreign_key: true
  end
end
