class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :gender
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
