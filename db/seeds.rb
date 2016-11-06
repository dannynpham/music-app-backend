users = 20.times.map do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password")
end

users.each do |user|
  users.each do |friend|
    next if user == friend
    UserFriend.create(user: user, friend: friend, status: true)
  end
end

users.each do |user|
  rand(1..10).times do
    Playlist.create(name: Faker::Pokemon.name, user: user)
  end
end

Playlist.all.each do |playlist|
  rand(5..15).times do
    begin
      spotify_track = RSpotify::Track.search(Faker::Hipster.word).first
      while spotify_track.nil? do
        spotify_track = RSpotify::Track.search(Faker::Hipster.word).first
      end
    rescue
      spotify_track = RSpotify::Track.search(Faker::Hipster.word).first
      while spotify_track.nil? do
        spotify_track = RSpotify::Track.search(Faker::Hipster.word).first
      end
    ensure
      spotify_track = RSpotify::Track.search(Faker::Hipster.word).first
      while spotify_track.nil? do
        spotify_track = RSpotify::Track.search(Faker::Hipster.word).first
      end
    end

    spotify_artist = Artist.find_or_create_by(name: spotify_track.artists.first.name)
    spotify_album = Album.find_or_create_by(title: spotify_track.album.name, artist: spotify_artist)

    spotify_track.album.genres.each do |spotify_genre|
      genre = Genre.find_or_create_by(name: spotify_genre)
      TrackGenre.create(track: spotify_track, genre: genre)
    end

    track = Track.create(name: spotify_track.name, artist: spotify_artist,
      duration: spotify_track.duration_ms/1000, album: spotify_album)

    PlaylistTrack.create(playlist: playlist, track: track)
  end
end

me = User.create(first_name: 'danny', last_name: 'pham', email: 'test@test.com', password: 'password')
users.each do |friend|
  UserFriend.create(user: me, friend: friend, status: true)
end

5.times do
  Playlist.create(name: Faker::GameOfThrones.character, user: me)
end
