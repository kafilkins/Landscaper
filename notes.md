Landscaper App

Employee(first_name, last_name, username, email, password, specialty, admin(default = false))
    has_many :jobs
    has_many :customers, through: :jobs

Job(location, requirements, cost, completed(t/f))
    belongs_to :employee
    belongs_to :customer

Customer(first_name, last_name, username, password)
    has_many :jobs
    has_many :employees, through: :jobs

