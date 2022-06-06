
class Station
  attr_reader :station_name,
              :address,
              :fuel_type,
              :access_times,
              :street_address,
              :city,
              :state,
              :zip

  def initialize(data)
    @station_name = data[:station_name]
    @address = full_address(data)
    @fuel_type = data[:fuel_type_code]
    @access_times = data[:access_days_time]

  end

  def full_address(data)
    data[:street_address] + "," + data[:city] + " ," + data[:state] + " " + data[:zip]
  end
end

# class Station
#   attr_reader :station_name,
#               :street_address,
#               :fuel_type,
#               :access_times,
#               :city,
#               :state,
#               :zip,
#               :full_address
#
#   def initialize(data)
#     @station_name = data[:station_name]
#     @street_address = data[:street_address]
#     @city = data[:city]
#     @state = data[:state]
#     @zip = data[:zip]
#     @fuel_type = data[:fuel_type_code]
#     @access_times = data[:access_days_time]
#     @full_address = @street_address + "," + @city + ", " + @state + " " + @zip
#   end
# end
