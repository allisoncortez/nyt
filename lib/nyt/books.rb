class Nyt::Books
  attr_accessor :title, :author, :description, :link
  @@all = []
  
  
  def initialize(title,author,description,link=nil)
    @title = title 
    @author = author
    @description = description
    @link = link
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  
  
  
end