class User < ActiveRecord::Base
	acts_as_authentic
	has_many :posts
	has_many :comments
	ROLES = %w[author]

	def role?(role)
		roles.include? role.to_s
	end
end
