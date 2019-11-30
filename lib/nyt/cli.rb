class Nyt::CLI 
  
  def call
    puts "Hey there, Bookworm!Here's a list of NYT Best Sellers."
    puts "put list here. 1-18, hardcoded"
  
    
    list
    # menu
    # bye
    end
  end 
  
  def genre_list
   
  end
  
  def list
    Nyt::API.new.fetch
    Nyt::Books.all.each.with_index(1) do |list,i|
      
      puts "#{i}. #{list.title}"
    
  end
  
  def best_sellers
    
  #   #get user input
  #   input = gets.strip.downcase
     
  #   #spit out correct list of 5 bestsellers for the genre that was selected.
    
  #   if input.to_i > 0 
  #   Nyt::API.new.fetch
  #   Nyt::Books.all.each.with_index(1) do |list, i|
  #     # binding.pry
  #   puts "#{i}. #{list.title} #{list.author}"
  #   puts "Description: #{list.description}"
  #   puts "Publisher: #{list.publisher} - ISBN number: #{list.isbn}"

    
  # #     profile_page = Nokogiri::HTML(open(profile_url))
  # #   student_hash = {}
  # #   profile_page.css(".social-icon-container a").each do |profile|
  # #   link = profile.attributes["href"].value 
  # #   if link.include?("twitter")
  # #     student_hash[:twitter] = link
  # #     elsif link.include?("linkedin")
  # #       student_hash[:linkedin] = link
  # #     elsif link.include?("github")
  # #       student_hash[:github] = link
  # #     else 
  # #       student_hash[:blog] = link 
  # #     end
  # #   end 
  # #   student_hash
  # # end
    
    
    
  #     end
  #   end
  end
  
  def menu 
    # input = nil
    # while input != "exit"
    #   puts "MAIN MENU:"
    #   puts "1. Input a number from the best seller list to view it's details."
    #   puts "2. Type 'best_sellers' to view the top 5 best sellers again."
    #   puts "3. Type 'genre list' to view the full list of genres."
    #   # puts "4. Type a number from the genre list to view it's bestsellers."
    #   puts "5. Type 'exit' to leave."
      
    #   input = gets.strip.downcase


    #   if input.to_i > 0 
    #     Nyt::API.new.fetch 
    #     Nyt::Books.all.each.with_index(1) do |list|
    #       # binding.pry
    #     puts "#{list.title} #{list.author} - #{list.links}"
    #     end
    #     elsif input == "list"
    #     best_sellers 
    #   else 
    #     puts "INVALID INPUT: type 'list' or 'exit'"
    #   end 
    # end
  end
  
  def bye 
    puts "Bye Nerd."
  end
  
end