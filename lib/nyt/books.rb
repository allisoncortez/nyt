class Nyt::Books
  attr_accessor :title, :author, :publisher, :description, :link
  @@all = []
  
  def initialize(title,author,publisher,description,link)
    @title = title 
    @author = author
    @publisher = publisher
    @description = description
    @link = link
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  

  
end