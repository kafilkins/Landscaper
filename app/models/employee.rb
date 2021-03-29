class Employee < ApplicationRecord 
    has_secure_password
    validates :first_name, :last_name, :username, :password, :password_confirmation, :specialty,  presence: true
    validates :email, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, confirmation: true 
    has_many :jobs 
    has_many :customers, through: :jobs
end 