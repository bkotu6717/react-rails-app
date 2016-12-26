class User < ApplicationRecord
	# attr_accessor :password, :password_confirmation
	# Email validations
	validates :email, presence: true, uniqueness: true
	validates :email, :format => VALID_EMAIL_REGEX
	
	# Password validations
	validates :password, :confirmation => true
	validates :password_confirmation, presence: true
	
	has_secure_password
end
