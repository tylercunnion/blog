class Post < ActiveRecord::Base
	belongs_to :author, :class_name => "User", :counter_cache => true
end
