class RemoveNotesFromBreweries < ActiveRecord::Migration[5.1]
  def change
    remove_column :breweries, :notes, :text
  end
end
