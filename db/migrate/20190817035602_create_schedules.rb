class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.datetime :schedule_date

      t.timestamps
    end
  end
end
