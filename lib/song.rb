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
  
end