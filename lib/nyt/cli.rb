class Nyt::CLI 
  
  def call
    puts "Hey there, Bookworm! Pick a category:"
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
      puts "Want more info? You can: 1. Input a number from the list. 2. Type list to view the full list again. 3. Type exit to leave. "
      input = gets.strip.downcase
      case input
      when "1"
        puts "1. Title by Author - description of book - amazon link"
      when "2"
        puts "2. Title by Author - description of book - amazon link"
      when "3"
        puts "3. Title by Author - description of book - amazon link"
      when "list"
        best_sellers
      else 
        puts "INVALID INPUT:"
      end 
    end
  end
  
  def bye 
    puts "goodbye message here"
  end
  
end