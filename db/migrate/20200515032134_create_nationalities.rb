class CreateNationalities < ActiveRecord::Migration[5.2]
  def change
    create_table :nationalities do |t|
      t.string :nationality

      t.timestamps
    end
  end
end
