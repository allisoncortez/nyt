class Nyt::API 
  
  def fetch
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    url = "https://api.nytimes.com/svc/books/v3/lists/current/combined-print-and-e-book-nonfiction.json?api-key=#{key}"
    
    response = HTTParty.get(url)
    response["results"]["books"].each do |book|
      title = book["title"]
      author = book["author"]
      publisher = book["publisher"]
      description = book["description"]
      
      
      link = book["buy_links"][0]["url"]
      #this would be my amazonlink
      
      # apple_link = book["buy_links"][1]["url"]
      # barnes_n_noble_link = book["buy_links"][2]["url"]
      # local_bookseller_link = book["buy_links"][3]["url"]
      
    
      Nyt::Books.new(title,author,publisher,description,link)
    
    end
  end 

end