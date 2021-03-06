class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation
	validates_uniqueness_of :email
	has_secure_password
	has_many :blabs

	def first_name
		self.name.splat(' ')[0]
	end

end