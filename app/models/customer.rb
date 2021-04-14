class Customer < ApplicationRecord
    has_secure_password
    validates :name, :email, presence: true
    #validates :password, confirmation: true
    validates :email, uniqueness: true
    #validates :password_confirmation, confirmation: true 
    has_many :jobs
    has_many :employees, through: :jobs 
end 
 
