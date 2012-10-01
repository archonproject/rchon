class ResearchAppointmentPurpose < ActiveRecord::Base
  attr_accessible :name
  has_many :research_appointments
end
