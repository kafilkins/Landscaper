class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :jobs, :requirements, :task
  end
end
