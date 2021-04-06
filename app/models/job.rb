class Job < ApplicationRecord
    has_many :tasks
    belongs_to :customer
    belongs_to :employee, optional: true  

    scope :lawn_mowing, -> { where(task: "Lawn Mowing")}
    scope :mulch, -> { where(task: "Mulch")}
    scope :fertilizing, -> { where(task: "Fertilizing")}
    scope :hedge_trimming, -> { where(task: "Hedge Trimming")}
    scope :leaf_removal, -> { where(task: "Leaf Removal")}
    scope :weed_whacking, -> { where(task: "Weed Whacking")}
    
    before_save do 
        self.task.gsub!(/[\[\]\"]/, "") if attribute_present?("task")
    end
end
 
