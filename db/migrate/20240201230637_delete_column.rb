class DeleteColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :sighting_animals, :sighting_id
  end
end
