class Song

  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end


  def artist_name=(name)
      binding.pry
      self.artist = Artist.find_or_create_by_name(name).add_song(self)
      
  end

  def self.new_by_filename(file_name)
    artist, song_name = file_name.split(" - ")
    new_song = self.new(song_name)
    new_song.artist_name = artist
    new_song
  end


end
