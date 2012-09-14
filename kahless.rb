#homepage in camping August 31, 2012
require_relative 'yaml.rb'


Camping.goes :Homepage

module Homepage::Controllers
  class Index < R '/'

    def get
      render :index
    end #end of the get method.
    
  end #end of he index class
  class Page < R '/(\w+)'

    def get page_name
      render page_name
    end #end of the get(page_name) method
    
  end #end fo the Page class

end #end of he controllers module.

module Homepage::Views
  def layout
    html do
      title { "Widsom of Kahless" }
      body { self << yield}
    end #end of the html block
  end #end of the layout method.

  def index
      quotes = yaml_load 'quotes.txt'
      center do 
      h1 "Wisdom of Kahless" 
      h2 "#{quotes.sample}"
      h6  {a 'More wisdom', :href => 'http://0.0.0.0:3301' }
    end #end of the center block.
  
  # center do
   #  p "Let's see if the center block works"
    # p "If it doesn't then we'll try something else"
    # p "It works!!"
    # h1 "This is big text"
  # end #end of the center loop

 # center do
  #  ul do
   #   li {a 'Google', :href => 'http://google.com' }
    #  li {a 'A sample page', :href => '/sample'}
   # end #end of the list block
 # end #end of the center block  



  end #end of the index method. 


end #end of the views  module




