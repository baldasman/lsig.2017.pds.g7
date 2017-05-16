class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|

      t.string :name
      t.string :gender
      t.integer :age
      t.string :address
      t.integer :vat
      t.integer :tel_number

      t.timestamps
    end
  end
end
