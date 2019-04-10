class CreateRoleUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :role_users do |t|
      t.references :role, foreign_key: true
      t.references :user, foreign_key: true
      t.date :from_date
      t.date :thru_date

      t.timestamps
    end
  end
end
