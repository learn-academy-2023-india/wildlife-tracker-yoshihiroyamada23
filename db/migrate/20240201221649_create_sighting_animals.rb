class CreateSightingAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :sighting_animals do |t|
      t.references :manage_animals, null: false, foreign_key: true
      t.references :sighting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
