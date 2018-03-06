class AddVisitedToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :visited, :boolean, default: false, null: false
  end
end
