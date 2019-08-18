class Doctor < ApplicationRecord
  belongs_to :specialist
  belongs_to :hospital
  has_many :schedule_bookeds
end
