# class Song 

#   attr_accessor :title, :artist 
#   @@all = []
#   def initialize(title)
#     @title = title 
#     @@all << self 
#   end 
  
# end 

class Song 
  @@all = []
  attr_accessor :name, :songs, :artist  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
   if self.all.select {|song| self.artist == artist}
     self.artist.name
   else
     return nil 
   end  
 end 

end

# Song.all.select {|song| song.artist == lil_nas_x}