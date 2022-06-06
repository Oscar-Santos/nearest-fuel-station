class SearchFacade
  def self.get_nearest_station(search)
    json = SearchService.get_fuel_station(search)

    Station.new(json[:fuel_stations][0])
  end
end
