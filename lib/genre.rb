class Genre
  
  extend Concerns::Findable
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
   self.all.clear
  end

  def save
    @@all << self
  end
  
  def self.create(genre)
    g = Genre.new(genre)
    g.save
    g
  end
  
   def songs 
    @songs
  end
  
   def artists
    songs.collect{|song| song.artist}.uniq
  end
  
end