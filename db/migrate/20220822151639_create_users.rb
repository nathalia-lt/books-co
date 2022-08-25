class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :profile_picture, default: 'https://img.icons8.com/external-kiranshastry-solid-kiranshastry/128/000000/external-user-interface-kiranshastry-solid-kiranshastry.png'
      t.string :password_digest
      t.timestamps
    end
  end
end