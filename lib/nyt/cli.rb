class Nyt::CLI 
  
  def call 
    Nyt::API.new.fetch 
    Nyt::Books.all.each do |list|
    puts list.title
    end
  end 
  
  def best_sellers
    #puts Best Sellers list from the category user has specified..
    # Category Name here:
    # 1. Book Title by Author(example of list item..)
  end
  
  def menu 
    while input != "See yah!"
      puts "For more info, input a number from the list.If you'd like to leave, input 'See yah!'"
      input = gets.strip.downcase
      case input
      when "1"
        puts "1. Title by Author - description of book - amazon link"
      when "2"
        puts "2. Title by Author - description of book - amazon link"
      when "3"
        puts "3. Title by Author - description of book - amazon link"
      end 
    end
  end
  
  def bye 
    puts "goodbye message here"
  end
  
end