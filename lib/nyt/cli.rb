class Nyt::CLI 
  
  def call
    puts "Hey there, Bookworm! Here are the current best sellers:"
    best_sellers
    menu
    bye
  end 
  
  def best_sellers
    # Category Name here:
    # 1. Book Title by Author(example of list item..)
    
    Nyt::API.new.fetch 
    Nyt::Books.all.each.with_index(1) do |list, i|
    puts "#{i}. #{list.title} by #{list.author}"
    end
  end
  
  def menu 
    input = nil
    while input != "exit"
      puts "1. Input a number from the list. 2. Type 'list' to view the full list again. 3. Type 'exit' to leave. "
      input = gets.strip.downcase


      if input.to_i > 0 
        Nyt::Books.all.each.with_index(1) do |list|
        puts "#{list.title} by #{list.author} - #{list.link}"
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