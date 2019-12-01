class Nyt::CLI 
  
  def call
    puts "\nHey there, Bookworm!"
    puts "Would you like to see top 15 bestseller list?"
    puts "type Y/N"
    
    input = gets.strip.downcase
    if input == "y"
    best_seller_list
    elsif input == "n"
    menu
    end
    
    # get_list
    best_seller_list
    get_chosen_book
  end
  
  # def get_list
  #   # @books = Nyt::Books.all
  #   @books = Nyt::Books.all
  # end
  
  def best_seller_list
    puts "\nChoose a book to see it's details."
    Nyt::API.new.fetch
    Nyt::Books.all.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
    end
  end
  
  
  def get_chosen_book
    chosen_book = gets.strip.to_i
    book_details(chosen_book)
  end
  
  def book_details(chosen_book)
    book = Nyt::Books.all[chosen_book - 1]
    # Nyt::Books.all.each do |item|
      # binding.pry
      
      # Nyt::Books.all.each do |book|
        # binding.pry
        puts "\n--------Book Details------------------------------------------------------"
        puts "\n#{book.title} by #{book.author}\n"
        puts "\nDescription: #{book.description}"
        
        #only put review if there is one.. need to code this..
        puts "\nReview: #{book.reviews}"
  end
  
    # input = gets.strip.downcase
 
    # if input.to_i > 0 
    # Nyt::API.new.fetch
    # Nyt::Books.all.each.with_index(1) do |list, i|
    #   # binding.pry
    # puts "#{i}. #{list.title} #{list.author}"
    # puts "Description: #{list.description}"
    # puts "Publisher: #{list.publisher} - ISBN number: #{list.isbn}"
    
    
  #   end
  # end
  
  # def menu 
  #   input = nil
  #   while input != "exit"
  #     puts "MAIN MENU:"
  #     puts "1. Input a number from the best seller list to view it's details."
  #     puts "2. Type 'best sellers list' to view the full list again."
  #     puts "5. Type 'exit' to leave."
      
  #     input = gets.strip.downcase
  #     if input.to_i > 0 
  #       Nyt::API.new.fetch 
  #       Nyt::Books.all.each.with_index(1) do |list|
  #         # binding.pry
  #       puts "#{list.title} #{list.author} - #{list.links}"
  #       end
  #       elsif input == "list"
  #       best_sellers 
  #     else 
  #       puts "INVALID INPUT: type 'list' or 'exit'"
  #     end 
  #   end
  # end
  
  
  
  # def bye 
  #   puts "Bye Nerd."
  # end
  
  
  end