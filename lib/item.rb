class AmazonBestSellers::Item 
 
 attr_accessor :name, :link, :company, :dep 
 

 @@all = []
 

  def initialize(name, link, company, dep)
    @name = name 
    @link = link 
    @company = company 
    @dep = dep 
    @@all << self 

  end 

  def self.all 
    @@all 
  end 



end 