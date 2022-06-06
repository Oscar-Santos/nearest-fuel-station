class Map
  attr_reader :distance,
              :formattedTime,
              :directions

  def initialize(data)
    @distance = data[:distance]
    @formattedTime = data[:formattedTime]
    @directions = get_directions(data)
    
  end

  def get_directions(data)
    result = []
    data[:legs][0][:maneuvers].each do |direction|
      result << direction[:narrative]
    end
    result
  end

end
