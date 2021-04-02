class AddColumnToTasksTable < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :job_id, :integer
  end
end
