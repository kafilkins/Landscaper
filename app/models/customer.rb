class Customer < ApplicationRecord
    has_secure_password
    validates :name, :email, presence: true
    #validates :password, confirmation: true
    validates :email, uniqueness: true
    #validates :password_confirmation, confirmation: true 
    has_many :jobs
    has_many :employees, through: :jobs 


   # def self.from_omniauth(auth)
   #     where(email: auth.info.email).first_or_initialize do |user|
   #       user.user_name = auth.info.name
   #       user.email = auth.info.email
   #       user.password = SecureRandom.hex
   #     end
   # end
end 
 
