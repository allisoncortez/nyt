class Nyt::CLI 
  
  def call
    Nyt::API.new.fetch
    
    greeting
    sleep(0.5)
    best_seller_list
    sleep(0.5)
    menu
  end
  
  
  def greeting
    puts "\nHey there, Bookworm!"
  end
  
  
  def best_seller_list
    puts "\nHere's the current Bestseller list for Non-fiction books."
    sleep(0.5)
    puts "Check it out..."
    sleep(1)
    
    Nyt::Books.all.uniq.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
    end
  end
  
  
  def book_details(input)
    book = Nyt::Books.all[input.to_i - 1]

        puts "\nBook Details"
        puts "=================================================================================\n"
        puts "\n#{book.title}\n"
        puts "Author: #{book.author}"
        puts "Publisher: #{book.publisher}"
        puts "Description: #{book.description}\n"
        puts "\nAmazon Link: #{book.link}\n"
        puts "\n=================================================================================\n"
  end
  
  
  def menu 
    input = nil
    
    while input != "exit"
      sleep(0.5)
      puts "\nInput a number from the best seller list to view it's details."
      sleep(0.25)
      puts "Type 'list' to view the full list again."
      sleep(0.25)
      puts "If you'd like to exit, type 'exit'.\n"
      sleep(0.25)
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
    puts "\n......"
    sleep(0.25)
    puts "..."
    sleep(0.25)
    puts "\nBye Nerd ;)\n"
  end

end