class Nyt::Books
  attr_accessor :name, :rank, :link
  @@all = []
  
  def initialize(name,rank,link)
    @name = name 
    @rank = rank
    @link = link
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
end