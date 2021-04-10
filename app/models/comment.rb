class Comment < ApplicationRecord
    belongs_to :job
    accepts_nested_attributes_for :job
end
