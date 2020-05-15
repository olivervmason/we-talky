class RemoveColsFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :language, :string
    remove_column :profiles, :nationality, :string
    remove_column :profiles, :nearest_city, :string
  end
end
