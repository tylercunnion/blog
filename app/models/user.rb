class User < ActiveRecord::Base
	acts_as_authentic do |c|
		c.login_field = :email
	end

	has_many :posts

	def name
		first_name + " " + last_name
	end
end
