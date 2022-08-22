class CreateClubusers < ActiveRecord::Migration[6.1]
  def change
    create_table :clubusers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bookclub, null: false, foreign_key: true

      t.timestamps
    end
  end
end
