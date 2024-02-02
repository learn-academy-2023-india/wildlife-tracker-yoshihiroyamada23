class ChangeForeignKeyName < ActiveRecord::Migration[7.0]
  def change
    rename_column :sightings, :manage_animals_id, :manage_animal_id
  end
end
