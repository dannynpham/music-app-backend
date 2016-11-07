class HomeController < ActionController::Base
  def index
    @word = Faker::Hipster.word
    @artists = RSpotify::Artist.search(@word)
  end
end
