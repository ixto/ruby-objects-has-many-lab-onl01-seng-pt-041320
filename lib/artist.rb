require 'pry' 

class Artist 

  attr_accessor :name
  @@song_count = 0 
  # attr_reader :songs 
 
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    @@song_count += 1 
  end 
  
  def add_song_by_name(name)
    s = Song.new(name)
    self.add_song(s)
    s 
    @@song_count += 1 
  end 
  
  def songs 
     artist_songs = Song.all.select do |song| 
        song.artist == self
      end
      artist_songs
    end
  
  def song_count 
    self.song.size 
  end 
  
  def self.song_count
    @@song_count 
  end 
  
  
end 

# class Artist
#   attr_accessor :name
 
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
 
#   def add_song(song)
#     @songs << song
#   end
 
#   def songs
#     @songs
#   end
# end


# class Artist
#     attr_accessor :name
  
#     @@song_count = 0
  
#     def initialize(name)
#       @name = name
#       @songs = []
#     end
  
#     def add_song(song)
#       @songs << song
#       song.artist = self
#       @@song_count +=1
#     end

#     def add_song_by_name(name)
#       song = Song.new(name)
#       @songs << song
#       song.artist = self
#       @@song_count +=1
#     end
  
#     def songs
#       artist_songs = Song.all.select do |song| 
#         song.artist == self
#       end
#       artist_songs
#     end
  
#     def self.song_count
#       @@song_count
#   end

# end