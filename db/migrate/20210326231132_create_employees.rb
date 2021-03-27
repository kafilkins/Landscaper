class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t| 
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :password_confirmation_digest
      t.string :specialty
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
