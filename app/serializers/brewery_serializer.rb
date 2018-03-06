class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :visited, :beers_tasted, :notes
end
