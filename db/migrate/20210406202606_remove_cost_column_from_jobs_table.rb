class RemoveCostColumnFromJobsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :cost, :integer
  end
end
