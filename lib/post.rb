class Post 
 
 @@all = []
 
 attr_accessor :name, :posts, :author, :title
 
 def initialize(title)
   @name = name 
   @title = title 
   @@all << self 
 end 
 
 def self.all
   @@all
 end 
 
 def author_name
   self.author.name  
     
  end 

end 

# class Song 
#   @@all = []
#   attr_accessor :name, :songs, :artist  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end
  
# end