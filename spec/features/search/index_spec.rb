require 'rails_helper'

RSpec.describe 'Search' do
  describe 'index page' do
    it 'finds the nearest fuel station and provide directions', :vcr do
      station = SearchFacade.get_nearest_station('1331 17th St LL100, Denver, CO 80202')
      map = MapFacade.get_directions('1331 17th St LL100, Denver, CO 80202',station.address)

      visit '/'

      select 'Turing', from: 'location'
      click_on "Find Nearest Station"
      expect(current_path).to eq("/search")

      expect(page).to have_content(station.station_name)
      expect(page).to have_content(station.address)
      expect(page).to have_content(station.fuel_type)
      expect(page).to have_content(station.access_times)

      expect(page).to have_content(map.distance)
      expect(page).to have_content(map.formattedTime)
      expect(page).to have_content(map.directions)
    end
  end
end
