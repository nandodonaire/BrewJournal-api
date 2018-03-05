class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :location
      t.string :beers_tasted
      t.text :notes

      t.timestamps
    end
  end
end
