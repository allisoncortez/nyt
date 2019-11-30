class Nyt::API 
  
  def fetch
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    url = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?offset=20&publisher=Penguin&api-key=#{key}"
    
    #list overview:  url = "https://api.nytimes.com/svc/books/v3/lists/overview.json?api-key=#{key}"
    # penguin top 15: https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?offset=20&publisher=Penguin&api-key=
    
    
    response = HTTParty.get(url)
    response["results"]["lists"][0]["books"].each do |book|
      # binding.pry
      
      # list_name = list[display_name]
      title = book["title"]
      author = book["contributor"]
      description = book["description"]
      links = book["buy_links"]
      publisher = book["publisher"]
      isbn = book["primary_isbn13"]
      
      
   
    # book_title = response["results"]["books"][0]["title"]
    # list_name = response["results"]["lists"][0]["list_name"]
    
      Nyt::Books.new(title, author, description,links, publisher, isbn)
    
    end
  end 

end