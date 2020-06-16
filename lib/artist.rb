class Artist
  attr_reader :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    songs << song if !songs.include?(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.song_count()
    return @@song_count
  end
end
