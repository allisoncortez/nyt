class Nyt::Books
  attr_accessor :list_name, :title, :author, :description, :links, :publisher, :isbn
  @@all = []
  
  
  def initialize(list_name,title,author,description,links=nil,publisher,isbn)
    @list_name = list_name
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