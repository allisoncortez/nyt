class Nyt::CLI 
  
  def call
    puts "Hey there, Bookworm! Here are the current best sellers:"
    best_sellers
    menu
    bye
  end 
  
  
  #another method: API fetch
  
  def best_sellers_by_genre
    # list from API fetch/call
    
    Nyt::API.new.fetch
    Nyt::Books.all.each.with_index(1) do |list, i|
    # puts "#{i}. #{list.title} #{list.author}"
    puts "#{i}. #{list.list_name}"
    end
  end
  
  def menu 
    input = nil
    while input != "exit"
      puts "1. Input a number from the list. 2. Type 'list' to view the full list again. 3. Type 'exit' to leave. "
      input = gets.strip.downcase


      if input.to_i > 0 
        Nyt::API.new.fetch 
        Nyt::Books.all.each.with_index(1) do |list|
          # binding.pry
        puts "#{list.title} #{list.author} - #{list.link}"
        end
        elsif input == "list"
        best_sellers 
      else 
        puts "INVALID INPUT: type 'list' or 'exit'"
      end 
    end
  end
  
  def bye 
    puts "Bye Nerd."
  end
  
end