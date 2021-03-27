class Customer < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :username, presence: true
    has_many :jobs
    has_many :employees, through: :jobs 
end
