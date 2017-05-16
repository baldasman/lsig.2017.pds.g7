class NewAssociations < ActiveRecord::Migration[5.0]
    def change

        remove_reference :users, :user_profile, index: true

        add_reference :user_profiles, :user, index: true

    end
end
