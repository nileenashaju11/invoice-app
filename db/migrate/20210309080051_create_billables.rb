class CreateBillables < ActiveRecord::Migration[6.1]
  def change
    create_table :billables do |t|
      t.integer :billable_hours
      t.integer :hourly_rate
      t.string :total_billable_hours
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
