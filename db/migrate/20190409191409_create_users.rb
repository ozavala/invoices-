class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :avatar
      t.date :birthday
      t.integer :gender
      t.date :start_date
      t.date :thru_date
      t.boolean :is_active
      t.integer :level
      t.text :comments
      t.string :password_digest
      t.string :email

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
