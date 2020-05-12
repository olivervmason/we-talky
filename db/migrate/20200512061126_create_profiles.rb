class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :target_language
      t.string :native_language
      t.string :nationality
      t.string :nearest_city
      t.string :preferred_platform
      t.string :interests
      t.text :profile_description
      t.integer :rating

      t.timestamps
    end
  end
end
