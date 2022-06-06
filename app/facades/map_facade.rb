class MapFacade
  def self.get_directions(from, to)
    map_data = MapquestService.station_details(from, to)

    Map.new(map_data[:route])
  end
end
