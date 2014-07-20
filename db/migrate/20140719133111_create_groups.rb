class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :meeting_day
      t.time :meeting_time
      t.string :location

      t.timestamps
    end
  end
end
