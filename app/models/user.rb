class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :username, presence: true, length: { maximum: 25 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
						uniqueness: { case_sensitive: false }
	#has_secure_password
	validates :password, length: { minimum: 6 }
	has_many :posts
	has_many :comments
end

