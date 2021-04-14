class Job < ApplicationRecord
    has_many :tasks
    has_many :comments
    belongs_to :customer
    belongs_to :employee, optional: true  

    validates :location, presence: true

    scope :completed, -> { where(completed: true)}

    def self.search(params)
        self.joins(:tasks).where(tasks: { name: "#{params}"})
    end

end
 
