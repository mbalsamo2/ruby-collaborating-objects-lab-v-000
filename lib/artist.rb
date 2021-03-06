require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    self.all.detect { |artist| artist.name == name} || self.create(name)
  end


  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.all
    @@all
  end

end
