class RemoveTaskFromJobsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :task
  end
end
