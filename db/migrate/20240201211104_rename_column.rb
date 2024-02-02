class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :sightings, :animal_id, :manage_animals_id
  end
end
