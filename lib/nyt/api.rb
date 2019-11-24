class Nyt::API 
  def fetch 
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    url = "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{key}"
    response = HTTParty.get(url)
    response["results"]["books"].each do |book|
      rank = book["rank"]
      title = book["title"]
      author = book["author"]
      Nyt::Books.new(rank,title,author)
    
    # binding.pry
    end
  end 
end