class Nyt::CLI 
  
  def call 
    Nyt::API.new.fetch 
    Nyt::Books.all.each do |list|
    puts list.title
    end
  end 
end