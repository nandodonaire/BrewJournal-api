class AddUserToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_reference :breweries, :user, foreign_key: true
  end
end
