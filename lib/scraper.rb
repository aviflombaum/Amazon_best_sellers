require_relative "../lib/controller.rb"
require_relative "../lib/item.rb"
require_relative "../lib/department.rb"


require 'open-uri'
require 'nokogiri'
require 'pry'

class AmazonBestSellers::Scraper 
  
  def get_items 
      
     page = Nokogiri::HTML(open("http://www.amazon.com/Best-Sellers/zgbs"))

     page.css(".zg_item").each do |item|

     dep_name = item.parent.css("h3").text
  
    item_name =  item.css(".zg_title").text.strip 
 
    item_link =  "www.amazon.com" + item.css("a")[0]["href"]

    item_company = item.css(".zg_itemInfo").children[3].text.strip

   new_item = AmazonBestSellers::Item.new(item_name, item_link, item_company, dep_name)
    
    AmazonBestSellers::Department.find_or_create_by_name(dep_name).items <<  new_item
   end 
  end 

end 

