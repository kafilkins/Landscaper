class Customer < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :username, :password, :password_confirmation, presence: true
    validates :email, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, confirmation: true 
    has_many :jobs
    has_many :employees, through: :jobs 
end 
 
