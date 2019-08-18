class ScheduleBooked < ApplicationRecord
  belongs_to :schedule
  belongs_to :doctor

  validate :check_date_schedule, :count_booked_per_day

  def check_date_schedule
    check_schedule = Schedule.where(id: self.schedule_id).first
    time_booked = check_schedule.schedule_date - DateTime.now
    compare_time = time_booked / 60
    self.try(:errors).try(:add, :base, "Unable create schedule with a doctor, please booked least than 30 minutes.") if compare_time.to_f < 30.0
  end

  def count_booked_per_day
    count_doctor_shcedule_per_day = self.class.where(doctor_id: self.doctor_id, created_at: [Date.today.beginning_of_day..Date.today.end_of_day]).count
    self.try(:errors).try(:add, :base, "Opps, this doctor have been maximum booked for today. Please booked next day.") if count_doctor_shcedule_per_day >= 10
  end
end
