class PostsController < ApplicationController

	def index
		@posts = Post.all(:include => :author, :order => 'created_at DESC', :conditions => {:published => true})
	end

	def show
		@post = Post.find(params[:id])
	end

end
