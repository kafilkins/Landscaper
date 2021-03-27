class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t| 
      t.string :location
      t.string :requirements
      t.integer :cost 
      t.boolean :completed 
      t.integer :employee_id 
      t.integer :customer_id

      t.timestamps
    end
  end
end
