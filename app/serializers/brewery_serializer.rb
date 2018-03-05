class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :beers_tasted, :notes
end
