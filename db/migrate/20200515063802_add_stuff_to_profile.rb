class AddStuffToProfile < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :language, foreign_key: true
    add_reference :profiles, :nationality, foreign_key: true
    add_reference :profiles, :city, foreign_key: true
  end
end
