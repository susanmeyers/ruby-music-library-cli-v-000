class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  
    
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(artist)
    @@all << Artist.new(artist)
     Artist
   end
   
  def add_song(song)
    song.artist = self unless song.artist
    self.songs << song unless self.songs.include?song
    #binding.pry
  end
end