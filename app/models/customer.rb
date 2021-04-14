class Customer < ApplicationRecord
    has_secure_password
    
    validates :name, :email, presence: true
    validates :email, uniqueness: true

    has_many :jobs
    has_many :employees, through: :jobs 
end 
 
