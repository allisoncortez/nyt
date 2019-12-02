class Nyt::API 
  
  def fetch
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    # url = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?offset=20&publisher=Penguin&api-key=#{key}"
    
    url = "https://api.nytimes.com/svc/books/v3/lists/current/combined-print-and-e-book-nonfiction.json?api-key=#{key}"
    
    
    response = HTTParty.get(url)
    response["results"]["books"].each do |book|
      # binding.pry
      title = book["title"]
      author = book["author"]
      publisher = book["publisher"]
      description = book["description"]
      link = book["amazon_product_url"]
      
    
      Nyt::Books.new(title,author,publisher,description,link)
    
    end
  end 

end