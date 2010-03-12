class CategoriesController < ApplicationController
  
  def index
    
  end
  
  def show
    @category = Category.find(params[:id], :include => :posts)
  end

end
