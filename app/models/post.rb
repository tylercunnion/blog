class Post < ActiveRecord::Base
	belongs_to :author, :class_name => "User", :counter_cache => true
	
	before_validation :create_slug, :create_summary
	
	validates_presence_of :title, :text, :slug
	validates_uniqueness_of :slug
	
	
	private
	  def create_slug
	    self.slug ||= self.title.gsub(" ", "_")
    end
    
    # TODO: Make a clever algorithm here
    def create_summary
      self.summary = self.text
    end
end
