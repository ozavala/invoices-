class CreateGymsites < ActiveRecord::Migration[5.2]
  def change
    create_table :gymsites do |t|
      t.string :surname
      t.string :legal_code
      t.string :description
      t.string :email

      t.timestamps
    end
  end
end
