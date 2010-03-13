class AdminController < ApplicationController

	skip_before_filter :sidebars
	before_filter :require_user

  
end
