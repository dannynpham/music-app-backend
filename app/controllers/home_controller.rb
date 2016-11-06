class HomeController < ActionController::Base
  def index
    @artists = RSpotify::Artist.search('blink')
  end
end
