class CreateBookclubs < ActiveRecord::Migration[6.1]
  def change
    create_table :bookclubs do |t|
      t.string :name
      t.json :books, array: true, default: []

      t.timestamps
    end
  end
end