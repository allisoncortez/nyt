class Nyt::Books
  attr_accessor :title, :author, :description, :link
  @@all = []
  
  #make it 5 attributes
  #access different buying options.. books["buy_links"]
  
  
  def initialize(title,author,description,link=nil)
    # @rank = rank
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