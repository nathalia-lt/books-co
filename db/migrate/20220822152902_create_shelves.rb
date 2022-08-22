class CreateShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :shelves do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.json :books, array: true, default: []

      t.timestamps
    end
  end
end
