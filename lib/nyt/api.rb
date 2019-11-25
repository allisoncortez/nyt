class Nyt::API 
  def fetch 
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    # url = "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{key}"
    url = "https://api.nytimes.com/svc/books/v3/lists/overview.json?api-key=#{key}"
    response = HTTParty.get(url)
    response["results"]["lists"].each do |book|
      # binding.pry
      title = book["title"]
      author = book["author"]
      description = book["description"]
      link = book["amazon_product_url"]
      
      Nyt::Books.new(title,author,description,link)
    
    end
  end 
end