class AmazonBestSellers::Controller 
   attr_accessor :items, :deps 
  
  def welcome 
     puts "Welcome to the Amazon Best Sellers Listing Gem.\nThe following are the departments by which you may choose from."
    AmazonBestSellers::Scraper.new.get_items 
   
    @items = AmazonBestSellers::Item.all
     
    departments 
    
    input 

  end 

  def departments 
     @deps = AmazonBestSellers::Department.all 
     @deps.each.with_index(1){|dep, index| puts "#{index}. #{dep.name}"}
  end 


 
 def input  

   puts "Type in one of the department numbers to see the details"
   input = ""
  
   until input == "exit" 
   
      input = gets.strip 

      if input.to_i >= 1 && input.to_i <= @deps.length 
       puts "Top three items in the #{@deps[input.to_i-1].name} Department" 
         @deps[input.to_i-1].items.each do |i|
           puts "#{i.name}  ||  #{i.company}  ||  #{i.link} "
           puts " " 
  
      end 

      elsif input == 'list'
         departments 
      end 
        
        if input != "exit"
        puts "Choose a different department, type list to list the departments again, or type exit to exit."
        end 
        
    end 
       puts "Thanks for using!" 
  end 

end 