module Admin
  class PostsController < ApplicationController

  	before_filter :require_user

  	def index
  		@posts = Post.all(:include => :author, :order => 'created_at DESC')
  	end

  	def new
  		@post = Post.new
  	end

  	def create 
  		@post = Post.new(params[:post])
  		@post.author = @current_user
  		if @post.save
  			flash[:notice] = "Post saved."
  			redirect_to post_url(@post)
  		else
  			render :action => :new
  		end
  	end

  	def edit
  		@post = Post.find(params[:id])
  	end

  	def show
  		@post = Post.find(params[:id])
  	end

  	def update
  		@post = Post.find(params[:id])
  		if @post.update_attributes(params[:post])
  			flash[:notice] = "Post saved."
  			redirect_to post_url(@post)
  		else
  			render :action => :edit
  		end
  	end

  	def delete
  	end
  end
end