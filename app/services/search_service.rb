class SearchService
  def self.get_fuel_station(location)
    list = '/api/alt-fuel-stations/v1/nearest'
    response = connection.get(list) do |faraday|
      faraday.params['api_key'] = ENV['nrel_api_key']
      faraday.params['format'] = 'json'
      faraday.params['location'] = location
    end

    JSON.parse(response.body, symbolize_names: true)

  end

  def self.connection
    url = 'https://developer.nrel.gov'
    Faraday.new(url: url)
  end

end
