class Task < ApplicationRecord
    belongs_to :job

    validates :name, presence: true
end
