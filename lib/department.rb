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
    # Either detect returns the match or we'll make a new instance.
    @@all.detect{|dep| dep.name == name} || AmazonBestSellers::Department.new(name)
  end 
end 
