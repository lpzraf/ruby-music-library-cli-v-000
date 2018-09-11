class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
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
  
  def self.create(artist)
    a = Artist.new(artist)
    a.save
    a
  end
  
end