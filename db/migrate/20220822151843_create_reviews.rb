class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :rating
      t.string :date
      t.string :text
      t.string :book_id
      t.string :book_name
      t.string :book_author

      t.timestamps
    end
  end
end