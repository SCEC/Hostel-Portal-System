class Student < ActiveRecord::Base
	attr_accessor :password, :salt, :encrypted_password

	has_one :user_pashash

	before_save :encrypt_password
  	after_save :clear_password

	EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/	#"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" #/\[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\/i/

	validates :firstName, :presence => true
	validates :lastname, :presence => true
	validates :email, :presence => true, :uniqueness => true, :format => {:with => EMAIL_REGEX }
	validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }

	validates :password, :confirmation => true #password_confirmation attr
	validates_length_of :password, :in => 6..20, :on => :create

	
	# Encrypt password
  	def encrypt_password
		if password.present?
			@salt = BCrypt::Engine.generate_salt
			@encrypted_password= BCrypt::Engine.hash_secret(password, salt)
		end
	end

	def clear_password
		self.password = nil
		userPashash  = UserPashash.create(
								:student_id => self.id, 
								:encrypted_password=> @encrypted_password , 
								:salt=> @salt 
							)
		userPashash.save
		userid = self.id

	end

	# authenticate user
	def self.authenticate(username_or_email="", login_password="")
		if EMAIL_REGEX.match(username_or_email)
			user = Student.find_by_email(username_or_email)
		else
			user = Student.find_by_username(username_or_email)
		end

		if user && user.match_password(login_password)
			return user
		else
			return false
		end
	end

	def match_password(login_password="")
		user_pashash.encrypted_password == BCrypt::Engine.hash_secret(login_password, user_pashash.salt)
	end

end
