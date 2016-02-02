require_relative "../lib/scraper.rb"


require 'pry'

class Controller 
  
  
  def self.welcome
     puts "Welcome to the Amazon Best Sellers Listing Gem.\nThe following are the departments by which you may choose from."
  end 

                    
 def self.list ## Lists all of the department names from the ruby best sellers list. 

   Scraper.dep.each.with_index(1){|dep, index| puts "#{index}. #{dep}"}  
  
 end 

 
 
 def self.input  ## grabs input from the user about which department they want to see the top items and displays it. 
     
    dep = Scraper.dep 
    item = Scraper.item_name
    company = Scraper.item_company 
    link = Scraper.product_link 

   puts "Type in one of the department numbers to see the details"
   input = ""
  
   until input == "exit" 
   
      input = gets.strip 
      
     

      if input == "1"
         puts "Top 3 items in the #{dep[0]} department."
          puts " "
          puts "1. #{item[0]} #{company[0]} ||  link : #{link[0]}"
          puts " "
          puts "2. #{item[1]} #{company[1]} ||  link : #{link[1]}"
          puts " "
          puts "3. #{item[2]} #{company[2]} ||  link : #{link[2]}"
          puts " "
       elsif input =="2"
          puts "Top 3 items in the #{dep[1]} department."
          puts " "
          puts "1. #{item[3]} #{company[3]} ||  link : #{link[3]}"
          puts " "
          puts "2. #{item[4]} #{company[4]} ||  link : #{link[4]}"
          puts " "
          puts "3. #{item[5]} #{company[5]} ||  link : #{link[5]}"
          puts " "
       elsif input == "3"
          puts "Top 3 items in the #{dep[2]} department."
          puts " "
          puts "1. #{item[6]} #{company[6]} ||  link : #{link[6]}"
          puts " "
          puts "2. #{item[7]} #{company[7]} ||  link : #{link[7]}"
          puts " "
          puts "3. #{item[8]} #{company[8]} ||  link : #{link[8]}"
          puts " "
       elsif input == "4"
          puts "Top 3 items in the #{dep[3]} department."
          puts " "
          puts "1. #{item[9]} #{company[9]} ||  link : #{link[9]}"
          puts " "
          puts "2. #{item[10]} #{company[10]} ||  link : #{link[10]}"
          puts " "
          puts "3. #{item[11]} #{company[11]} ||  link : #{link[11]}"
          puts " "
       elsif input == "5"
          puts "Top 3 items in the #{dep[4]} department."
          puts " "
          puts "1. #{item[12]} #{company[12]} ||  link : #{link[12]}"
          puts " "
          puts "2. #{item[13]} #{company[13]} ||  link : #{link[13]}"
          puts " "
          puts "3. #{item[14]} #{company[14]} ||  link : #{link[14]}"
          puts " "
       elsif input == "6" 
          puts "Top 3 items in the #{dep[5]} department."
          puts " "
          puts "1. #{item[15]} #{company[15]} ||  link : #{link[15]}"
          puts " "
          puts "2. #{item[16]} #{company[16]} ||  link : #{link[16]}"
          puts " "
          puts "3. #{item[17]} #{company[17]} ||  link : #{link[17]}"
          puts " "
       elsif input == 'list'
         Controller.list 
      end 
        
        puts "Choose a different department, type list to list the departments again, or type exit to exit."
  
    end 
        
  end 

end 