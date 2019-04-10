class CreateGymsiteUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :gymsite_users do |t|
      t.references :user, foreign_key: true
      t.references :gymsite, foreign_key: true
      t.date :from_date
      t.date :thru_date

      t.timestamps
    end
  end
end
