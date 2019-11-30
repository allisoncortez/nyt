class Nyt::CLI 
  
  def call
  #   user_input = ""
    
  #   while user_input != "exit"
    puts "Hey there, Bookworm!...."
    puts "Penguin's Top 15 best sellers.."
    
    best_seller_list
    
  end
  
  def best_seller_list
    Nyt::API.new.fetch
    Nyt::Books.all.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} #{book.author}"
    end
    
  end
    
  
#   def genre_list
#     input = gets.strip.downcase
    
#     if input.to_i > 0 
#       Nyt::API.new.fetch
#       Nyt::Books.all.each.with_index(1) do |list, i|
#       puts "#{i}. #{list.title} #{list.author}"
#     end
#   end
  
#   def list
#     Nyt::API.new.fetch
#     Nyt::Books.all.each.with_index(1) do |list,i|
      
#       puts "#{i}. #{list.title}"
#     end
#   end
  
  
  def book_info
    input = gets.strip.downcase
 
    if input.to_i > 0 
    Nyt::API.new.fetch
    Nyt::Books.all.each.with_index(1) do |list, i|
      # binding.pry
    puts "#{i}. #{list.title} #{list.author}"
    puts "Description: #{list.description}"
    puts "Publisher: #{list.publisher} - ISBN number: #{list.isbn}"
    
    
    end
  end
  end
  
  def menu 
    input = nil
    while input != "exit"
      puts "MAIN MENU:"
      puts "1. Input a number from the best seller list to view it's details."
      puts "2. Type 'best sellers list' to view the full list again."
      puts "5. Type 'exit' to leave."
      
      input = gets.strip.downcase
      if input.to_i > 0 
        Nyt::API.new.fetch 
        Nyt::Books.all.each.with_index(1) do |list|
          # binding.pry
        puts "#{list.title} #{list.author} - #{list.links}"
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