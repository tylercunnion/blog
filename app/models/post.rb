class Post < ActiveRecord::Base
	belongs_to :author, :class_name => "User", :counter_cache => true
	
	before_validation :create_slug
	
	validates_presence_of :title, :text
	validates_uniqueness_of :slug
	
	has_many :categorizations
	has_many :categories, :through => :categorizations
	
	
	private
	  def create_slug
	    self.slug ||= self.title.gsub(" ", "_")
    end
end
