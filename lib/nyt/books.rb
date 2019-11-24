class Nyt::Books
  attr_accessor :rank, :title, :author
  @@all = []
  
  def initialize(rank,title,author)
    @rank = rank
    @title = title 
    @author = author
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
end