class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :client_name
      t.string :developer
      t.datetime :start_date
      t.integer :working_hours
      t.integer :project_status
      t.datetime :payment_date
      t.integer :invoice_status

      t.timestamps
    end
  end
end
