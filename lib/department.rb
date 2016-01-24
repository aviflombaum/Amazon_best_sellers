require_relative "../lib/scraper.rb"
require_relative "../lib/controller.rb"





class Department  ### Goal is to create a department object for each department on the best sellers and to have each department store the 
  ## top three items. 
  attr_accessor  :name 

 @@all = []

 def initialize(name) 
  @name = name 
  #@items = []
  @@all << self 
 end 


end 