class CreateLeaveRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_requests do |t|
      t.integer :member_id
      t.string :reason
      t.date :start_date
      t.date :end_date
      t.integer :day_part
      t.timestamps
    end
  end
end
