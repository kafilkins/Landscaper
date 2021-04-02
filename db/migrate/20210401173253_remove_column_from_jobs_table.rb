class RemoveColumnFromJobsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :task_id
  end
end
