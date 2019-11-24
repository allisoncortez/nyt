class Nyt::API 
  def fetch 
    key = "C9IM2TSLGbkXfHjIpP2ThdAEHTkIZzFV"
    url = "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{key}"
    response = HTTParty.get(url)
    response["results"].each do |book|
      
    binding.pry
  end 
end