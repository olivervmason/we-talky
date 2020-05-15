class CreateProfileLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_languages do |t|
      t.references :profile, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
