require_relative "../lib/department.rb"
require_relative "../lib/controller.rb"



require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper 
 
  attr_accessor :departments, :cat, :page

  @page = Nokogiri::HTML(open("http://www.amazon.com/Best-Sellers/zgbs"))
 
 
  

  def self.dep 
     @page.css('.zg_homeWidget > h3').collect{|x| x.text} 
  end 


  def self.stars   
     @page.css(".a-icon-alt").collect{|x| x.text.strip}
  end 

      
  def self.item_name
    @page.css(".zg_title").collect{|x| x.text.strip}
  end 

   
  def self.rev_num   
    @page.css(".a-size-small a").collect{|x| x.text}
  end 



 def self.product_link 
    h = []
    i = 1
  
    Scraper.item_name.count.times do |i|

     h << "www.amazon.com" + @page.css(".zg_title a")[i]["href"]
    end 
   h 
 end 
 
 

 def self.item_company   
    h = []
    i = 1
  
    Scraper.item_name.count.times do |i|

     h << @page.css(".zg_itemInfo")[i].css("span")[1].text.strip
    end 
    h 
  
 end 

 
end
