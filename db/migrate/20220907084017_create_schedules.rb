class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :time
      t.integer :user_id
      t.integer :destination_id
      t.timestamps
    end
  end
end
