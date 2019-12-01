class Nyt::Books
  attr_accessor :title, :author, :description, :reviews
  @@all = []
  
  def initialize(title,author,description,reviews)
    @title = title 
    @author = author
    @description = description
    @reviews = reviews
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  

  
end