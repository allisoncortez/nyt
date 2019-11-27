class Nyt::API 
  def fetch 
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    # url = "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{key}"
    url = "https://api.nytimes.com/svc/books/v3/lists/overview.json?api-key=#{key}"
  
    response = HTTParty.get(url)
    # title = response["results"]["books"][0]["title"]
    
    response["results"]["lists"][0]["books"].each do |book|
      # binding.pry
      
      # rank = book["rank"]
      # list_name = response["results"]["list_name"]
      title = book["title"]
      author = book["contributor"]
      description = book["description"]
      link = book["amazon_product_url"]
      # buy_links = book ["buy_links"]
      
      
      
      Nyt::Books.new(title,author,description,link)
    
    end
  end 

end