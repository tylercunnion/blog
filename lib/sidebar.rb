class Sidebar
  
  attr_reader :tweets
  attr_reader :about_text
  attr_reader :categories
  
  def twitter
    if Rails.env.production?
      search = Twitter::Search.new.from('tylercunnion').per_page(3)
      @tweets = search.fetch.results
    else
      @tweets = [
          Hashie::Mash.new({"profile_image_url"=>"http://a3.twimg.com/profile_images/56615849/spiderman_normal.jpg", "created_at"=>"Thu, 11 Mar 2010 15:37:51 +0000", "from_user"=>"tylercunnion", "to_user_id"=>nil, "text"=>"Just bought tickets to the @ConanOBrien stage show at Radio City. This might be the greatest day ever", "id"=>10327137969, "from_user_id"=>947167, "geo"=>nil, "iso_language_code"=>"en", "source"=>"&lt;a href=&quot;http://mowglii.com/itsy&quot; rel=&quot;nofollow&quot;&gt;Itsy!&lt;/a&gt;"}),
          Hashie::Mash.new({"profile_image_url"=>"http://a3.twimg.com/profile_images/56615849/spiderman_normal.jpg", "created_at"=>"Wed, 10 Mar 2010 13:30:19 +0000", "from_user"=>"tylercunnion", "to_user_id"=>nil, "text"=>"Mmm, this one's still got that &quot;new bus smell&quot;.", "id"=>10270947633, "from_user_id"=>947167, "geo"=>nil, "iso_language_code"=>"en", "source"=>"&lt;a href=&quot;http://twitterrific.com&quot; rel=&quot;nofollow&quot;&gt;Twitterrific&lt;/a&gt;"}),
          Hashie::Mash.new({"profile_image_url"=>"http://a3.twimg.com/profile_images/56615849/spiderman_normal.jpg", "created_at"=>"Tue, 09 Mar 2010 14:11:10 +0000", "from_user"=>"tylercunnion", "to_user_id"=>nil, "text"=>"RT @MLB: Watch Jimmy Rollins take Javier Vazquez deep on 1st pitch of the game http://is.gd/a2iX3 #Phillies #Yankees", "id"=>10221970145, "from_user_id"=>947167, "geo"=>nil, "iso_language_code"=>"en", "source"=>"&lt;a href=&quot;http://twitter.com/&quot;&gt;web&lt;/a&gt;"})
        ]
      end
  end
  
  def about
    @about_text = "Here is my crappy blog. Welcome."
  end

  def category_list
	@categories = Category.find(:all, :order => :name)
  end
  
end
