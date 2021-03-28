class Job < ApplicationRecord
    belongs_to :employee, optional: true 
    belongs_to :customer 
end

