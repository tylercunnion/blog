class User < ActiveRecord::Base
	acts_as_authentic do |c|
		options.login_field = :email
	end
end
