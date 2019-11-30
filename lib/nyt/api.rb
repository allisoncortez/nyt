class Nyt::API 
  
  def fetch
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    url = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?offset=20&publisher=Penguin&api-key=#{key}"
    
    #list overview:  url = "https://api.nytimes.com/svc/books/v3/lists/overview.json?api-key=#{key}"
    # penguin top 15: https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?offset=20&publisher=Penguin&api-key=
    
    
    response = HTTParty.get(url)
    response["results"].each do |book|
 
      title = book["title"]
      author = book["contributor"]
      description = book["description"]
      reviews = book["reviews"][0]["book_review_link"]
      
    
      Nyt::Books.new(title, author, description,reviews)
    
    end
  end 

end