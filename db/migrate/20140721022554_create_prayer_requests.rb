class CreatePrayerRequests < ActiveRecord::Migration
  def change
    create_table :prayer_requests do |t|
      t.integer :group_id
      t.string :status
      t.string :requested_by
      t.string :focus
      t.string :description
      t.datetime :until

      t.timestamps
    end
  end
end
