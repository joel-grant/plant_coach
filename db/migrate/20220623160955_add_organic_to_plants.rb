class AddOrganicToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :organic, :boolean
  end
end
