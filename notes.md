To do listed by priorities 

1. Fix stars and number of reviews 
2. record walkthrough 


  def self.stars   ## For getting the stars of products
     @page.css(".a-icon-alt").collect{|x| x.text.strip} ### Fix for if no reviews 
  end 

     
  def self.rev_num   ## For getting the number of reviewers 
    @page.css(".a-size-small a").collect{|x| x.text} ### Fix for if no reviews 
  end 

  #{stars[2]} stars by #{reviews[2]} people. 

  


 



