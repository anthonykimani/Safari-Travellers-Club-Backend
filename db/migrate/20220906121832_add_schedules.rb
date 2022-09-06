class AddSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :schedules, :string
  end
end
