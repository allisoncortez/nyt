class Nyt::Genres
  attr_accessor :list_name, :books
  @@all = []
  
  def initialize(list_name)
    @list_name = list_name
    @books = []
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
   def books
    @books
  end
  
end