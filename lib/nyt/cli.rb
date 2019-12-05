class Nyt::CLI 
  
  def call
    Nyt::API.new.fetch
    
    greeting
    best_seller_list
    menu
  end
  
  
  def greeting
    puts "\nHey there, Bookworm!".colorize(:light_magenta)
  end
  
  
  def best_seller_list
    sleep(0.5)
    puts "Here's the current Bestseller list for Non-fiction books. Check it out...".colorize(:light_magenta)
    sleep(0.5)
    
    Nyt::Books.all.uniq.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
      sleep(0.25)
    end
  end
  
  
  def book_details(input)
    book = Nyt::Books.all[input.to_i - 1]
        
        puts "\n=============================================================================".colorize(:light_magenta)
        
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
      puts "=============================================================================\n".colorize(:blue)
      puts "\nInput a number from the best seller list to view it's details.".colorize(:light_blue)
      sleep(0.25)
      puts "Type 'list' to view the full list again.".colorize(:light_blue)
      sleep(0.25)
      puts "If you'd like to exit, type 'exit'.\n".colorize(:light_blue)
      input = gets.strip.downcase
      
      
      if input.to_i > 0 
        book_details(input)
      elsif input == "list"
        best_seller_list
      elsif input == "exit"
        bye
      else 
        puts "\nINVALID INPUT:".colorize(:red)
      end 
    end
  end
  
  
  def bye 
    sleep(0.25)
    puts "\nBye Nerd ;)\n".colorize(:light_yellow)
  end

end