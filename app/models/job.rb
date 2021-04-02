class Job < ApplicationRecord
    has_many :tasks
    belongs_to :customer
    belongs_to :employee, optional: true  
    
    before_save do 
        self.task.gsub!(/[\[\]\"]/, "") if attribute_present?("task")
    end
end
 
