class SearchController < ApplicationController
  def index
    @station = SearchFacade.get_nearest_station(params[:location])

    @map = MapFacade.get_directions(params[:location], @station.address)

  end
end
