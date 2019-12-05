class Nyt::CLI 
  
  def call
    Nyt::API.new.fetch
    
    greeting
    best_seller_list
    menu
  end
  
  
  def greeting
    puts "\nHey there, Bookworm!".colorize(:light_yellow)
  end
  
  
  def best_seller_list
    puts "Here are the current Nonfiction Bestsellers:".colorize(:light_yellow)
    sleep(0.5)
    
    Nyt::Books.all.uniq.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
    end
  end
  
  
  def book_details(input)
    book = Nyt::Books.all[input.to_i - 1]
        
        puts "\n=============================================================================".colorize(:light_yellow)
        
        puts "\nTitle:".colorize(:light_yellow)
        puts "#{book.title}"
        puts "\nAuthor:".colorize(:light_yellow)
        puts "#{book.author}"
        puts "\nDescription:".colorize(:light_yellow)
        puts "#{book.description}"
        puts "\nPublisher:".colorize(:light_yellow)
        puts "#{book.publisher}"
        puts "\nLink to Purchase:".colorize(:light_yellow)
        puts "#{book.link}\n"
  end
  
  
  def menu 
    input = nil
    
    while input != "exit"
      sleep(0.25)
      puts "=============================================================================".colorize(:light_yellow)
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
        puts "\nINVALID INPUT!!".colorize(:red)
      end 
    end
  end
  
  
  def bye
    puts "\nBye Nerd ;)\n".colorize(:light_yellow)
  end

end