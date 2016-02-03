class AmazonBestSellers::Department 
   
 attr_accessor :name, :items 

  @@all = []

  
  def initialize(name)
    @name = name 
    @items = []
    @@all <<self
   
  end 

  def self.all
    @@all 
  end 

  def self.find_or_create_by_name(name)
    if  @@all.detect{|dep| dep.name == name} != nil 
      @@all.detect{|dep| dep.name == name}
    else 
      AmazonBestSellers::Department.new(name)
    end 

  end 

end 