class RemoveCompletedFromJobsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :completed 
  end
end
