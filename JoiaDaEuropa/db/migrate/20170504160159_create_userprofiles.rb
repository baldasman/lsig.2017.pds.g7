class CreateUserprofiles < ActiveRecord::Migration[5.0]
  def change
    t.string :name,        null: false, default: ""
    t.string :gender,      null: true, default: ""
    t.integer :age,        null: true, default: ""
    t.string :address,     null: false, default: ""
    t.integer :vat,        null: false, default: ""
    t.integer :telnumber,  null: false, default: ""


    add_reference :userprofiles, :users

    belongs_to :user
    end
  end
end
