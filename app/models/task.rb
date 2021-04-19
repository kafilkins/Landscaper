class Task < ApplicationRecord
    belongs_to :job
    validates :name, presence: true
    validates_inclusion_of :name, :in => ["Lawn Mowing", "Mulch", "Fertilizing", "Spring/Fall Clean Up", "Hedge Trimming"], 
                            message: " of task must be one of the following; Lawn Mowing, Mulch, Fertilizing, Spring/Fall Clean Up, Hedge Trimming."

end
