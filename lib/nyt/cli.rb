class Nyt::CLI 
  
  def call
    puts "\nHey there, Bookworm!"
    sleep(1)
    puts "Would you like to see top 15 bestseller list? (Y/N)\n"
    sleep(0.25)
    input = gets.strip.downcase
    
    Nyt::API.new.fetch
    
    until 
    #option for capital Y
      if input == "y"
        best_seller_list
        menu
      elsif input == "n"
        bye
      else
        puts "invalid input: type 'y' or 'n'."
      end
    end
    
  end
 
  
  def best_seller_list
    puts "\nHere are Penguin's Top 20 Bestsellers."
    sleep(0.25)
    
    # Nyt::API.new.fetch
    Nyt::Books.all.uniq.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
    end
    sleep(1)
    # menu
    
  end
  
  
  def book_details(input)
    book = Nyt::Books.all[input.to_i - 1]

        puts "\n------------Book Details------------------------------------------------------\n"
        puts "\n#{book.title} by #{book.author}\n"
        puts "Publisher:#{book.publisher}"
        puts "Description: #{book.description}\n"
        puts "\nAmazon Link: #{book.link}"
        puts "\n-------------------------------------------------------------------------------\n"
  end
  
  
  def menu 
    input = nil
    
    while input != "exit"
      sleep(0.5)
      puts "\nInput a number from the best seller list to view it's details."
      puts "Type 'list' to view the full list again."
      puts "If you'd like to exit, type 'exit'.\n"
      input = gets.strip.downcase
      
      
      if input.to_i > 0 
        book_details(input)
      elsif input == "list"
        best_seller_list
      elsif input == "exit"
        bye
      else 
        puts "\nINVALID INPUT: type 'list' or 'exit'"
      end 
    end
  end
  
  
  def bye 
    puts "\nBye Nerd."
  end
  
end