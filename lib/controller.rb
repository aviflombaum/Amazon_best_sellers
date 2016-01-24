require_relative "../lib/scraper.rb"
require_relative "../lib/department.rb"

require 'pry'

class Controller 
   #attr_accessor :item, :company, :stars, :reviews, :dep, :link 
  
  def self.welcome
     puts "Welcome to the Amazon Best Seller Listing Gem.\nThe following are the departments by which you may choose from."
  end 

                    
 def self.list ## Lists all of the department names from the ruby best sellers list. 

   Scraper.dep.each.with_index(1){|dep, index| puts "#{index}. #{dep}"}  
  
 end 

 
 
 def self.input  ## grabs input from the user about which department they want to see the top items and displays it. 
     
    dep = Scraper.dep 
    item = Scraper.item_name
    company = Scraper.item_company 
    stars = Scraper.stars 
    reviews = Scraper.rev_num 
    link = Scraper.product_link 

   puts "Type in one of the department numbers to see the details"
   input = ""
    #binding.pry 
   until input == "exit" 
   
      input = gets.strip 
      
     

      if input == "1"
         puts "Top 3 items in the #{dep[0]} department."
          puts " "
          puts "1. #{item[0]} #{company[0]} ||  #{stars[0]} stars by #{reviews[0]} people. ||  link : #{link[0]}"
          puts " "
          puts "2. #{item[1]} #{company[1]} ||  #{stars[1]} stars by #{reviews[1]} people. ||  link : #{link[1]}"
          puts " "
          puts "3. #{item[2]} #{company[2]} ||  #{stars[2]} stars by #{reviews[2]} people. ||  link : #{link[2]}"
          puts " "
       elsif input =="2"
          puts "Top 3 items in the #{dep[1]} department."
          puts " "
          puts "1. #{item[3]} #{company[3]} ||  #{stars[3]} stars by #{reviews[3]} people. ||  link : #{link[3]}"
          puts " "
          puts "2. #{item[4]} #{company[4]} ||  #{stars[4]} stars by #{reviews[4]} people. ||  link : #{link[4]}"
          puts " "
          puts "3. #{item[5]} #{company[5]} ||  #{stars[5]} stars by #{reviews[5]} people. ||  link : #{link[5]}"
          puts " "
       elsif input == "3"
          puts "Top 3 items in the #{dep[2]} department."
          puts " "
          puts "1. #{item[6]} #{company[6]} ||  #{stars[6]} stars by #{reviews[6]} people. ||  link : #{link[6]}"
          puts " "
          puts "2. #{item[7]} #{company[7]} ||  #{stars[7]} stars by #{reviews[7]} people. ||  link : #{link[7]}"
          puts " "
          puts "3. #{item[8]} #{company[8]} ||  #{stars[8]} stars by #{reviews[8]} people. ||  link : #{link[8]}"
          puts " "
       elsif input == "4"
          puts "Top 3 items in the #{dep[3]} department."
          puts " "
          puts "1. #{item[9]} #{company[9]} ||  #{stars[9]} stars by #{reviews[9]} people. ||  link : #{link[9]}"
          puts " "
          puts "2. #{item[10]} #{company[10]} ||  #{stars[10]} stars by #{reviews[10]} people. ||  link : #{link[10]}"
          puts " "
          puts "3. #{item[11]} #{company[11]} ||  #{stars[11]} stars by #{reviews[11]} people. ||  link : #{link[11]}"
          puts " "
       elsif input == "5"
          puts "Top 3 items in the #{dep[4]} department."
          puts " "
          puts "1. #{item[12]} #{company[12]} ||  #{stars[12]} stars by #{reviews[12]} people. ||  link : #{link[12]}"
          puts " "
          puts "2. #{item[13]} #{company[13]} ||  #{stars[13]} stars by #{reviews[13]} people. ||  link : #{link[13]}"
          puts " "
          puts "3. #{item[14]} #{company[14]} ||  #{stars[14]} stars by #{reviews[14]} people. ||  link : #{link[14]}"
          puts " "
       elsif input == "6" 
          puts "Top 3 items in the #{dep[5]} department."
          puts " "
          puts "1. #{item[15]} #{company[15]} ||  #{stars[15]} stars by #{reviews[15]} people. ||  link : #{link[15]}"
          puts " "
          puts "2. #{item[16]} #{company[16]} ||  #{stars[16]} stars by #{reviews[16]} people. ||  link : #{link[16]}"
          puts " "
          puts "3. #{item[17]} #{company[17]} ||  #{stars[17]} stars by #{reviews[17]} people. ||  link : #{link[17]}"
          puts " "
       elsif input == 'list'
         Controller.list 
      end 
        
        puts "Choose a different department, type list to list the departments again, or type exit to exit."
  
    end 

  end 

end 