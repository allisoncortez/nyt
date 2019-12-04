class Nyt::CLI 
  
  def call
    Nyt::API.new.fetch
    
    greeting
    best_seller_list
    menu
  end
  
  
  def greeting
    puts "\nHey there, Bookworm!"
  end
  
  
  def best_seller_list
    sleep(0.5)
    puts "\nHere's the current Bestseller list for Non-fiction books. Check it out..."
    sleep(0.5)
    
    Nyt::Books.all.uniq.each.with_index(1) do |book, i|
      puts "\n#{i}. #{book.title} by #{book.author}\n"
      sleep(0.25)
    end
  end
  
  
  def book_details(input)
    book = Nyt::Books.all[input.to_i - 1]
        
        puts "\n============================================================================="
        
        sleep(0.25)
        puts "\nTitle: #{book.title}\n"
        sleep(0.25)
        puts "Author: #{book.author}"
        sleep(0.25)
        puts "Publisher: #{book.publisher}"
        sleep(0.25)
        puts "Description: #{book.description}\n"
        sleep(0.25)
        puts "\nBuy Link: #{book.link}\n"
        sleep(0.25)
  end
  
  
  def menu 
    input = nil
    
    while input != "exit"
      sleep(0.25)
      puts "=============================================================================\n"
      puts "\nInput a number from the best seller list to view it's details."
      sleep(0.25)
      puts "Type 'list' to view the full list again."
      sleep(0.25)
      puts "If you'd like to exit, type 'exit'.\n"
      input = gets.strip.downcase
      
      
      if input.to_i > 0 
        book_details(input)
      elsif input == "list"
        best_seller_list
      elsif input == "exit"
        bye
      else 
        puts "\nINVALID INPUT:"
      end 
    end
  end
  
  
  def bye 
    sleep(0.25)
    puts "\nBye Nerd ;)\n"
  end

end