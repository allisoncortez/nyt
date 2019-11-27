class Nyt::API 
  def fetch
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    
    #top 5 current bestsellers of each genre
    url = "https://api.nytimes.com/svc/books/v3/lists/overview.json?api-key=#{key}"
  
    response = HTTParty.get(url)
    response["results"]["lists"][8].each do |list|
      binding.pry
      
      # list_name = list[list_name]
      # title = list["books"][0]["title"]
      # author = list["books"][0]["contributor"]
      # description = book["description"]
      # # link = book["amazon_product_url"]
      # buy_links = book ["buy_links"]
      # publisher = 
      # isbn = 
      
      
   
    # book_title = response["results"]["books"][0]["title"]
    # list_name = response["results"]["lists"][0]["list_name"]
    
      # Nyt::Books.new(title, author, description,buy_links, publisher, isbn)
    
    end
  end 

end