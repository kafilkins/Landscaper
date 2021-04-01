class Job < ApplicationRecord
    belongs_to :customer
    belongs_to :employee, optional: true  
    belongs_to :task, optional: true
    #accepts_nested_attributes_for :task

    def tasks_attributes=(task_attributes)
        task_attributes.values.each do |task_attribute|
            task = Task.find_or_create_by(task_attribute)
            self.task << task 
        end
    end
end
 
