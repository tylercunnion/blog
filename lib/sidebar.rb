class Sidebar
  
  attr_reader :tweets
  attr_reader :about_text
  
  def twitter
    search = Twitter::Search.new.from('tylercunnion').per_page(5)
	  @tweets = search.fetch.results
  end
  
  def about
    @about_text = "Here is my crappy blog. Welcome."
  end
  
end