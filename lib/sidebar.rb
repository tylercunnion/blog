class Sidebar
  
  attr_reader :tweets
  
  def twitter
    search = Twitter::Search.new.from('tylercunnion').per_page(5)
	  @tweets = search.fetch.results
  end
end