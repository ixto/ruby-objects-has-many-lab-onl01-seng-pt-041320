class Author 

 attr_accessor :name, :posts 
# attr_reader :title 
 @@post_count = 0 
 
 def initialize(name)
   @name = name 
   @posts = [] 
 end 
 
 def posts 
   author_posts = Post.all.select do |post|
     post.author == self
   end 
   author_posts 
 end 

 def add_post(post)
   @posts << post 
   post.author = self 
   @@post_count += 1 
 end 
 
 def add_post_by_title(post_title)
   p = Post.new(post_title)
   self.add_post(p)
   p 
   @@post_count += 1 
 end 
 
 def self.post_count
   @@post_count 
 end 
 
end 

# def add_song_by_name(name)
#       song = Song.new(name)
#       @songs << song
#       song.artist = self
#       @@song_count +=1
#     end

# def add_song_by_name(name)
#     s = Song.new(name)
#     self.add_song(s)
#     s 
#     @@song_count += 1 
#   end 

# def add_song(song)
#     @songs << song 
#     song.artist = self 
#     @@song_count += 1 
#   end 
