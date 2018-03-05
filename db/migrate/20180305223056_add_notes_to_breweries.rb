class AddNotesToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :notes, :string
  end
end
