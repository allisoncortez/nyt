class Nyt::Books
  attr_accessor :title, :author, :description, :links, :publisher, :isbn
  @@all = []
  
  
  def initialize(title,author,description,links=nil,publisher,isbn)
    @title = title 
    @author = author
    @description = description
    @links = links
    @publisher = publisher
    @isbn = isbn
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  

  
end