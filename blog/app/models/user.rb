class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	ROLES = %w[author]

	def role?(role)
		roles.include? role.to_s
	end
end
