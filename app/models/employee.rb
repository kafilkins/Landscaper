class Employee < ApplicationRecord 
    has_secure_password
    validates :first_name, :last_name, :email, :password, :password_confirmation, :specialty,  presence: true
    validates :email, uniqueness: true

    has_many :jobs 
    has_many :customers, through: :jobs
end  