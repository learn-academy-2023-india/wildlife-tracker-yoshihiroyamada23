class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :sighting_animals, :manage_animals_id, :sighting_id
  end
end
