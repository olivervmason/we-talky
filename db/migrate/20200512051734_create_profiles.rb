class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :user
      t.string :references
      t.string :name
      t.string :string
      t.string :target_language
      t.string :string
      t.string :native_language
      t.string :string
      t.string :nationality
      t.string :string
      t.string :nearest_city
      t.string :string
      t.string :preferred_platform
      t.string :string
      t.string :interests
      t.string :string
      t.string :profile_description
      t.string :text
      t.string :rating
      t.string :integer

      t.timestamps
    end
  end
end
