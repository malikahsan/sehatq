class CreateScheduleBookeds < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_bookeds do |t|
      t.string :patient_name
      t.belongs_to :schedule, foreign_key: true
      t.belongs_to :doctor, foreign_key: true

      t.timestamps
    end
  end
end
