class AddTasksIdToJobsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :task_id, :integer
  end
end
